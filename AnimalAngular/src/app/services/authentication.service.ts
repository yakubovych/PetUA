import { BehaviorSubject, Observable, config } from 'rxjs';
import { map } from 'rxjs/operators';

import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { AdminToken } from '../models/adminToken';

@Injectable({ providedIn: 'root' })
export class AuthenticationService {
    private currentUserSubject: BehaviorSubject<AdminToken>;
    public currentUser: Observable<AdminToken>;

    constructor(private http: HttpClient) {
        this.currentUserSubject = new BehaviorSubject<AdminToken>(JSON.parse(localStorage.getItem('currentUser')));
        this.currentUser = this.currentUserSubject.asObservable();
    }

    public get currentUserValue(): AdminToken {
        return this.currentUserSubject.value;
    }

    login(Email, Password) {
        return this.http.post<any>(`${environment.apiBaseURI}/account/login`, { Email, Password })
            .pipe(map(user => {
                // store user details and jwt token in local storage to keep user logged in between page refreshes
                localStorage.setItem('currentUser', JSON.stringify(user));
                this.currentUserSubject.next(user);
                return user;
            }));
    }
    confirmEmail(userId, token){
        return this.http.get(`${environment.apiBaseURI}/account/confirmemail?userid=${userId}&token=${token}`);
    }

    logout() {
        // remove user from local storage and set current user to null
        localStorage.removeItem('currentUser');
        this.currentUserSubject.next(null);
    }

    isSuperAdmin(){
        const currentUser = this.currentUserValue;
        if (currentUser) {
            let jwtData = currentUser.token.split('.')[1];
            let decodedJwtJsonData = window.atob(jwtData);
            let jwtPayload = JSON.parse(decodedJwtJsonData);
            let roles = jwtPayload["http://schemas.microsoft.com/ws/2008/06/identity/claims/role"];
            if (roles instanceof Array){
                return true
            }
            return false;
        }
        return false;
    }
}