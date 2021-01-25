import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Admin } from '../models/admin';
import { environment } from 'src/environments/environment';
import { AdminEmail } from '../models/adminEmail';
import { ResetPassword } from '../models/resetPassword';

@Injectable({ providedIn: 'root' })
export class UserService {
    constructor(private http: HttpClient) { }

    register(user: Admin) {
        return this.http.post(`${environment.apiBaseURI}/account/register`, user);
    }
    
    forgotPassword(email: AdminEmail){
        return this.http.post(`${environment.apiBaseURI}/account/forgotPassword`, email);
    }

    resetPassword(resetPassword: ResetPassword){
        return this.http.post(`${environment.apiBaseURI}/account/resetPassword`, resetPassword);
    }
}