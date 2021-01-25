import { AlertService} from 'src/app/services/alert.service';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { first } from 'rxjs/operators';

@Component({ templateUrl: './section-login.component.html' })
export class SectionLoginComponent implements OnInit {
    loginForm: FormGroup;
    loading = false;
    submitted = false;
    returnUrl: string;

    constructor(
        private formBuilder: FormBuilder,
        private route: ActivatedRoute,
        private router: Router,
        private authenticationService: AuthenticationService,
        private alertService: AlertService
    ) {
        // redirect to home if already logged in
        if (this.authenticationService.currentUserValue) {
            this.router.navigate(['/']);
        }
    }

    ngOnInit() {
        this.loginForm = this.formBuilder.group({
            username: ['', Validators.required],
            password: ['', Validators.required]
        });

        // get return url from route parameters or default to '/'
        this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
        let userId = this.route.snapshot.paramMap.get('userid'); 
        let token = this.route.snapshot.paramMap.get('token');
        if(userId && token){
            this.authenticationService.confirmEmail(userId, token).pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Email was successfully confirmed! Now you may login.', true)
                },
                error => {
                    this.alertService.error("Failed to confirm email.");
                });;
        }
    }

    // convenience getter for easy access to form fields
    get f() { return this.loginForm.controls; }

    onSubmit() {
        this.submitted = true;

        // reset alerts on submit
        this.alertService.clear();

        // stop here if form is invalid
        if (this.loginForm.invalid) {
            return;
        }

        this.loading = true;
        this.authenticationService.login(this.f.username.value, this.f.password.value)
            .pipe(first())
            .subscribe(
                data => {
                    data = this.router.navigate([this.returnUrl]);
                },
                error => {
                    this.alertService.error('Failed to login. Check your Email and Password.');
                    this.loading = false;
                });
    }
  }