import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Animal } from '../models/animal';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AnimalService {

  constructor(private _http: HttpClient) { }

  getAllAnimals(){
    return this._http.get<Animal[]>(environment.apiBaseURI + '/animal/get');
  }
  getAllBlobs(){
    return this._http.get(environment.apiBaseURI + '/Blob/list');
  }
  getAllAnimalsByParam(param : string){
    return this._http.get<Animal[]>(environment.apiBaseURI + '/animal/get' + param);
  }

  getAllAdoptedAnimals(){
    return this._http.get<Animal[]>(environment.apiBaseURI + '/animal/GetAllAdoptedAnimals');
  }

  getAllHiddenAnimals(){
    return this._http.get<Animal[]>(environment.apiBaseURI + '/animal/GetAllHiddenAnimals');
  }

  getById(id: number){
    return this._http.get<Animal>(environment.apiBaseURI + '/animal/' + id);
  }
  
  editAnimal(animal: Animal) {  
    return this._http.put(environment.apiBaseURI + '/animal/' + animal.id, animal);
  }

  createAnimal(animal: Animal) {  
    return this._http.post(environment.apiBaseURI + '/animal/', animal);
  }

  deleteAnimal(id: number){
    return this._http.delete(environment.apiBaseURI + '/animal/' + id);
  }
}
