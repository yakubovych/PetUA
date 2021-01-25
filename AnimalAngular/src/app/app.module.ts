import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { Routes, RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MaterialModule } from "./helpers/material/material.module";

import { AppComponent } from './app.component';
import { AnimalListComponent } from './sections/section-animal/animal-list/animal-list.component';
import { AnimalCreateComponent } from './sections/section-animal/animal-create/animal-create.component';
import { AnimalEditComponent } from './sections/section-animal/animal-edit/animal-edit.component';
import { AnimalItemComponent } from './sections/section-animal/animal-item/animal-item.component';
import { SectionNavBarComponent } from './sections/section-nav-bar/section-nav-bar.component';
import { SectionLoginComponent } from './sections/section-auth/section-login/section-login.component';
import { SectionRegisterComponent } from './sections/section-auth/section-register/section-register.component';
import { SectionAlertComponent } from './sections/section-auth/section-alert/section-alert.component';
import { AuthGuard } from './helpers/authGuard';
import { AlertService } from './services/alert.service';
import { AuthenticationService } from './services/authentication.service';
import { JwtInterceptor } from './helpers/jwtInterceptor';
import { ErrorInterceptor } from './helpers/errorInterceptor';
import { DefectsComponent } from './sections/defect/defects.component';
import { DefectService } from './services/defect.service';
import { MainAdminService } from './services/mainAdmin.service';
import { ListOfRolesComponent } from './sections/section-admin/list-of-roles/list-of-roles.component';
import { DefectAddComponent } from './sections/defect/defect-add.component';
import { DefectEditComponent } from './sections/defect/defect-edit.component';
import { SectionForgotPasswordComponent } from './sections/section-auth/section-forgot-password/section-forgot-password.component';
import { SectionResetPasswordComponent } from './sections/section-auth/section-reset-password/section-reset-password.component';
import { MatConfirmDialogComponent } from './helpers/mat-confirm-dialog/mat-confirm-dialog.component';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { AnimalHiddenComponent } from './sections/section-animal/animal-hidden/animal-hidden.component';
import { AnimalAdoptedComponent } from './sections/section-animal/animal-adopted/animal-adopted.component';
import { AuthorizationService } from './services/authorization.service';
import { AuthGuardRoles } from './helpers/authGuardRoles';
import { VaccinationListComponent } from './sections/section-vaccination/vaccination-list.component';
import { VaccinationAddComponent } from './sections/section-vaccination/vaccination-add.component';
import { VaccinationEditComponent } from './sections/section-vaccination/vaccination-edit.component';
import { VaccinationService } from './services/vaccination.service';

const appRoutes: Routes = [
  { path: '', component: AnimalListComponent},
  { path: 'animals', component: AnimalListComponent},
  { path: 'login', component: SectionLoginComponent },
  { path: 'login/:userid/:token', component: SectionLoginComponent},
  { path: 'register', component: SectionRegisterComponent},
  { path: 'forgot', component: SectionForgotPasswordComponent},
  { path: 'reset/:userid/:token', component: SectionResetPasswordComponent},
  { path: 'animalItem/:id', component: AnimalItemComponent},
  { path: 'animalEdit/:id', component: AnimalEditComponent, canActivate:[AuthGuard]},
  { path: 'animalAdopted', component: AnimalAdoptedComponent, canActivate:[AuthGuard]},
  { path: 'animalHidden', component: AnimalHiddenComponent, canActivate:[AuthGuard]},
  { path: 'animalCreate', component: AnimalCreateComponent, canActivate:[AuthGuard]},
  { path: 'animalEdit/:id', component: AnimalEditComponent
                          , data: { allowedRoles: ['SuperAdmin', 'Admin']}
                          , canActivate:[AuthGuardRoles]},
  { path: 'animalCreate', component: AnimalCreateComponent, 
                          data: { allowedRoles: ['SuperAdmin', 'Admin']}, 
                          canActivate:[AuthGuardRoles]},
  { path: 'defects', component: DefectsComponent},
  { path: 'defectAdd', component: DefectAddComponent},
  { path: 'defect/edit/:id', component: DefectEditComponent},
  { path: 'vaccinations', component: VaccinationListComponent},
  { path: 'vaccinationAdd', component: VaccinationAddComponent},
  { path: 'vaccination/edit/:id', component: VaccinationEditComponent},
  { path: 'settings', 
                    component: ListOfRolesComponent, 
                    data: { allowedRoles: ['SuperAdmin']}, 
                    canActivate:[AuthGuardRoles]},
  // otherwise redirect to home
  { path: '**', redirectTo: '' }
];

@NgModule({
  declarations: [
    AppComponent,
    AnimalListComponent,
    AnimalCreateComponent,
    AnimalEditComponent,
    AnimalItemComponent,
    SectionNavBarComponent,
    SectionLoginComponent,
    SectionRegisterComponent,
    SectionAlertComponent,
    DefectsComponent,
    ListOfRolesComponent,
    DefectAddComponent,
    DefectEditComponent,
    VaccinationListComponent,
    VaccinationAddComponent,
    VaccinationEditComponent,
    SectionForgotPasswordComponent,
    SectionResetPasswordComponent,
    MatConfirmDialogComponent,
    AnimalHiddenComponent,
    AnimalAdoptedComponent
  ],
  imports: [
    BrowserModule,
    ReactiveFormsModule,
    FormsModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    MaterialModule,
    RouterModule.forRoot(appRoutes),
    NoopAnimationsModule
  ],
  providers: [
    AuthGuardRoles,
    AlertService,
    AuthenticationService,
    AuthorizationService,
    DefectService,
    VaccinationService,
    MainAdminService,
    { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true }],
  bootstrap: [AppComponent],
  entryComponents:[MatConfirmDialogComponent]
})
export class AppModule { }
