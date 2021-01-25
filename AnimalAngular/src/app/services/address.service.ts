import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Address } from '../models/address';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AddressService {

  constructor(private _http: HttpClient) { }

  getAllAddresses(){
    return this._http.get<Address[]>(environment.apiBaseURI + '/address/');
  }
}
