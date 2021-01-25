import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { first } from 'rxjs/operators';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { AlertService } from 'src/app/services/alert.service';
import { UserService } from 'src/app/services/user.service';
import { MustMatch} from 'src/app/helpers/validators/passwordMustMatch';
import { PasswordValidator } from 'src/app/helpers/validators/passwordValidator';


@Component({ templateUrl: './section-register.component.html' })
export class SectionRegisterComponent implements OnInit {
    registerForm: FormGroup;
    loading = false;
    submitted = false;

    constructor(
        private formBuilder: FormBuilder,
        private router: Router,
        private authenticationService: AuthenticationService,
        private alertService: AlertService,
        private userService: UserService
    ) {
        // redirect to home if already logged in
        if (this.authenticationService.currentUserValue) {
            this.router.navigate(['/']);
        }
    }

    ngOnInit() {
        this.registerForm = this.formBuilder.group({
            Email: new FormControl('', [Validators.required, Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')]),
            Password: new FormControl('', [Validators.required, PasswordValidator()]),
            ConfirmPassword: new FormControl('', [Validators.required])
        },
        { 
            validators: [MustMatch('Password', 'ConfirmPassword')]
        }
        );
        this.alertService.clear();
    }

    // convenience getter for easy access to form fields
    get f() { return this.registerForm.controls; }

    onSubmit() {
        this.submitted = true;

        // reset alerts on submit
        this.alertService.clear();

        // stop here if form is invalid
        if (this.registerForm.invalid) {
            return;
        }

        this.loading = true;
        console.log(this.registerForm.value);
        this.userService.register(this.registerForm.value)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Created successfully. Confirm your email to complete registration.', true);
                    this.router.navigate(['/login']);
                },
                error => {
                    this.alertService.error('Failed to register. Specified email might not be added by Main Admin.');
                    this.loading = false;
                });
    }
}
