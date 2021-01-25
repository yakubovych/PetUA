import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Admin } from 'src/app/models/admin';
import { AdminToken } from 'src/app/models/adminToken';
import { AuthorizationService } from 'src/app/services/authorization.service';

@Component({
  selector: 'app-section-nav-bar',
  templateUrl: './section-nav-bar.component.html',
  styleUrls: ['./section-nav-bar.component.css']
})
export class SectionNavBarComponent implements OnInit {
  currentUser: AdminToken;
  constructor(
    private router: Router,
    private authenticationService: AuthenticationService,
    private authorizarionService: AuthorizationService
    ) {
    this.authenticationService.currentUser.subscribe(x => this.currentUser = x);
    
  }

  ngOnInit() {}

  logout() {
    this.authenticationService.logout();
    this.router.navigate(['/login']);
  }
  
  isAuthorized(){
    return this.authorizarionService.isAuthorized(["SuperAdmin"]);
  }
  
}
