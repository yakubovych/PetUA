import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Food } from '../models/food';

@Injectable({
  providedIn: 'root'
})
export class FoodService {

  constructor(private _http: HttpClient) { }

  getAllFoods(){
    return this._http.get<Food[]>(environment.apiBaseURI + '/food/');
  }
}
