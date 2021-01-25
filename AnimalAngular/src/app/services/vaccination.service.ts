import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Vaccination } from '../models/vaccination';

@Injectable({
  providedIn: 'root'
})
export class VaccinationService {

  constructor(private _http: HttpClient) { }

  getAllVaccinations(){
    return this._http.get<Vaccination[]>(environment.apiBaseURI + '/vaccination/');
  }

  getVaccinationById(id: number){
    return this._http.get(environment.apiBaseURI + '/Vaccination/' + id);
  }

  createVaccination(vaccination: Vaccination){
    return this._http.post(environment.apiBaseURI + '/Vaccination', vaccination);
  }

  updateVaccination(id: number, vaccination: Vaccination){
    return this._http.put(environment.apiBaseURI + '/Vaccination/' + id, vaccination);
  }

  deleteVaccination(id: number){
    return this._http.delete(environment.apiBaseURI + '/Vaccination/' + id)
  }
}
