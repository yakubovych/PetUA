import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { AlertService } from 'src/app/services/alert.service';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { UserService } from 'src/app/services/user.service';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-section-forgot-password',
  templateUrl: './section-forgot-password.component.html',
  styleUrls: ['./section-forgot-password.component.css']
})
export class SectionForgotPasswordComponent implements OnInit {

  forgotForm: FormGroup;
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
  }

  ngOnInit() {
    this.forgotForm = this.formBuilder.group({
      Email: new FormControl('', [Validators.required, Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')]),
    });

    this.alertService.clear();
  }

  get formControl() { return this.forgotForm.controls; }

    onSubmit() {
        this.submitted = true;

        this.alertService.clear();

        if (this.forgotForm.invalid) {
            return;
        }

        this.loading = true;
        console.log(this.forgotForm.value);
        this.userService.forgotPassword(this.forgotForm.value)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('An email has been sent to your address with a link which you can use to reset your password.', true);
                    this.router.navigate(['/login']);
                },
                error => {
                    this.alertService.error('Specified email might not be found.');
                    this.loading = false;
                });
    }
}
