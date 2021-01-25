import { Component, OnInit } from '@angular/core';
import { MainAdminService } from 'src/app/services/mainAdmin.service';
import { AdminEmail } from 'src/app/models/adminEmail';
import { first } from 'rxjs/operators';
import { Router, ActivatedRoute } from '@angular/router';
import { AlertService } from 'src/app/services/alert.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { AdminId } from 'src/app/models/adminId';

@Component({
  selector: 'app-list-of-roles',
  templateUrl: './list-of-roles.component.html',
  styleUrls: ['./list-of-roles.component.css']
})
export class ListOfRolesComponent implements OnInit {

  admins: AdminId[];
  superAdmins: AdminId[];
  returnUrl: string;
  emailForm: FormGroup;
  submitted: boolean;

  constructor(private mainAdminService: MainAdminService,
    private router: Router,
    private alertService: AlertService,
    private formBuilder: FormBuilder) { }

  ngOnInit() {
    this.fetchData();
    this.emailForm = this.formBuilder.group({
      email: new FormControl('', [Validators.required,
                                  Validators.email, 
                                  Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')])
    });
  }

  getAdmins(){
      this.mainAdminService.GetAdmins()
      .subscribe((res: AdminId[]) => {
        this.admins = res;
      });
  }

  getSuperAdmins(){
    this.mainAdminService.GetSuperAdmins()
    .subscribe((res: AdminId[]) => {
      this.superAdmins = res;
    });
  }

  AssignToRole(admin: AdminEmail){
    this.mainAdminService.AssignToRole(admin)
    .pipe(first())
            .subscribe(
                data => {
                    this.fetchData();
                },
                error => {
                    this.alertService.error("Unable to assign!");
                    this.SetAlertTimeout();
                });
  }

  UnassignRole(admin: AdminEmail){
    this.mainAdminService.UnassignRole(admin)
    .pipe(first())
            .subscribe(
                data => {
                    this.fetchData();
                },
                error => {
                    this.alertService.error("Unable to unassign!");
                    this.SetAlertTimeout();
                    
                });
  }

  DeleteAdmin(admin:AdminId){
    this.mainAdminService.DeleteAdmin(admin)
    .pipe(first())
            .subscribe(
                data => {
                    this.fetchData();
                },
                error => {
                    this.alertService.error("Failed to delete! Account may have already been deleted.");
                    this.SetAlertTimeout();
                });
  }

  onSubmit(){
    this.submitted = true;
    this.alertService.clear();
    // stop here if form is invalid
    if (this.emailForm.invalid) {
        return;
    }
    let adminEmail = new AdminEmail();
    adminEmail.Email = this.emailForm.controls.email.value;
    this.mainAdminService.AddAdminEmail(adminEmail).pipe(first())
    .subscribe(
        data => {
          this.alertService.success('Email was successfully added.', true);
        },
        error => {
            this.alertService.error("Failed to add new email address! It can already be added.");
            this.SetAlertTimeout();
        });
  }

  fetchData(){
    this.getAdmins();
    this.getSuperAdmins();
  }

  SetAlertTimeout(){
    setTimeout( () => this.alertService.clear(), 5000);
  }
}
