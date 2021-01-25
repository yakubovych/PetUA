import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { AdminEmail } from '../models/adminEmail';
import { AdminId } from '../models/adminId';

@Injectable({ providedIn: 'root' })
export class MainAdminService {
    constructor(private http: HttpClient) { }

    GetAdmins() {
        return this.http.get<AdminId[]>(`${environment.apiBaseURI}/admin/get/role={Admin}`);
    }

    GetSuperAdmins(){
        return this.http.get<AdminId[]>(`${environment.apiBaseURI}/admin/get/role={SuperAdmin}`);
    }

    AssignToRole(admin: AdminEmail){
        return this.http.post(`${environment.apiBaseURI}/admin/assignrole`, admin);
    }

    UnassignRole(admin: AdminEmail){
        return this.http.post(`${environment.apiBaseURI}/admin/unassignrole`, admin);
    }

    AddAdminEmail(admin: AdminEmail){
        return this.http.post(`${environment.apiBaseURI}/admin/addemail`, admin);
    }

    DeleteAdmin(admin: AdminId){
        return this.http.delete(`${environment.apiBaseURI}/admin/delete/${admin.id}`);
    }
}