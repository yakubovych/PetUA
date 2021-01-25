import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Needs } from '../models/needs';

@Injectable({
  providedIn: 'root'
})
export class NeedsService {

  constructor(private _http: HttpClient) { }

  getAllNeeds(){
    return this._http.get<Needs[]>(environment.apiBaseURI + '/needs/');
  }
}
