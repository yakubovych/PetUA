import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Keeping } from '../models/keeping';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class KeepingService {
  
  constructor(private _http: HttpClient) { }

  getAllKeepings(){
    return this._http.get<Keeping[]>(environment.apiBaseURI + '/keeping/');
  }
}
