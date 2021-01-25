import { Injectable } from '@angular/core';
import { Router, CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

import { AuthorizationService } from '../services/authorization.service';
import { Observable } from 'rxjs/internal/Observable';

@Injectable({ providedIn: 'root' })
export class AuthGuardRoles implements CanActivate {
    constructor(
        private router: Router,
        private authorizationService: AuthorizationService,
    ) {}

    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {
        const allowedRoles = route.data.allowedRoles;
        const isAuthorized = this.authorizationService.isAuthorized(allowedRoles);
        if (!isAuthorized) {
            this.router.navigate(['/login'], { queryParams: { returnUrl: state.url }});
        }
    
        return isAuthorized;
      }
}