import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AttitudeTo } from '../models/attitudeTo';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AttitudeToService {

  constructor(private _http: HttpClient) { }

  getAllAttitudes(){
    return this._http.get<AttitudeTo[]>(environment.apiBaseURI + '/attitudeTo/');
  }
}
