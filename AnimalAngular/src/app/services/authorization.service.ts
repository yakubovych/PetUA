import { Injectable } from '@angular/core';
import { JwtHelperService } from '@auth0/angular-jwt';
import { AuthenticationService } from './authentication.service';

@Injectable({
  providedIn: 'root'
})
export class AuthorizationService {
  private jwtHelperService: JwtHelperService;
  constructor(
    private authenticationService: AuthenticationService) {
        this.jwtHelperService = new JwtHelperService();
    }

  isAuthorized(allowedRoles: string[]): boolean {
    // check if the list of allowed roles is empty, if empty, authorize the user to access the page
    if (allowedRoles == null || allowedRoles.length === 0) {
      return true;
    }

    if(this.authenticationService.currentUserValue){
        const token = this.authenticationService.currentUserValue.token;
        const decodeToken = this.jwtHelperService.decodeToken(token);

        if (!decodeToken) {
            console.log('Invalid token');
            return false;
        }
        var roles = decodeToken['http://schemas.microsoft.com/ws/2008/06/identity/claims/role'];
        let includes = false;
        // check if the user roles is in the list of allowed roles, return true if allowed and false if not allowed
         allowedRoles.forEach(element => {
             if(roles.includes(element)){
                includes = true;
                return;
             }
         });
         return includes;
    }
    return false;
  }
}