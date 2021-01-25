import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Processing } from '../models/processing';

@Injectable({
  providedIn: 'root'
})
export class ProcessingService {

  constructor(private _http: HttpClient) { }

  getAllProcessings(){
    return this._http.get<Processing[]>(environment.apiBaseURI + '/processing/');
  }
}
