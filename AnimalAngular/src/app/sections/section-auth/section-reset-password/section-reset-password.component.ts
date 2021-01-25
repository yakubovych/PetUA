import { Component, OnInit } from '@angular/core';
import { first } from 'rxjs/operators';
import { FormControl, Validators, FormBuilder, FormGroup } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { AlertService } from 'src/app/services/alert.service';
import { UserService } from 'src/app/services/user.service';
import { ResetPassword } from 'src/app/models/resetPassword';
import { PasswordValidator } from 'src/app/helpers/validators/passwordValidator';
import { MustMatch } from 'src/app/helpers/validators/passwordMustMatch';

@Component({
  selector: 'app-section-reset-password',
  templateUrl: './section-reset-password.component.html',
  styleUrls: ['./section-reset-password.component.css']
})
export class SectionResetPasswordComponent implements OnInit {
  resetForm: FormGroup;
  resetPassword: ResetPassword;
  loading = false;
  submitted = false;
  returnUrl: string;

  constructor(private formBuilder: FormBuilder,
    private route: ActivatedRoute,
    private router: Router,
    private authenticationService: AuthenticationService,
    private alertService: AlertService,
    private userService: UserService) {

    if (this.authenticationService.currentUserValue) {
      this.router.navigate(['/']);
    }
    this.resetPassword = new ResetPassword();
  }

  ngOnInit() {
    this.resetForm = this.formBuilder.group({
      Password: new FormControl('', [Validators.required, PasswordValidator()]),
      ConfirmPassword: new FormControl('', [Validators.required])
  },
  { 
      validators: [MustMatch('Password', 'ConfirmPassword')]
  });
    this.alertService.clear();
  }

  get formControl() { return this.resetForm.controls; }

    onSubmit() {
        this.submitted = true;

        this.alertService.clear();

        if (this.resetForm.invalid) {
            return;
        }

        this.loading = true;
        
        this.resetPassword = this.resetForm.value;
        this.resetPassword.userid = this.route.snapshot.paramMap.get('userid'); 
        this.resetPassword.token  = this.route.snapshot.paramMap.get('token');

        this.userService.resetPassword(this.resetPassword)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Your passwrod was seccussfully changed',true);
                    this.router.navigate(['/login']);
                },
                error => {
                    this.alertService.error('Something went wrong. Please try again later');
                    this.loading = false;
                });
    }
}
