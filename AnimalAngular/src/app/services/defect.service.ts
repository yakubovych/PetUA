import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Defect } from '../models/defect';

@Injectable({
  providedIn: 'root'
})
export class DefectService {
  url: string = "";
  constructor(private http: HttpClient) { 
    
  }

  getAnimalDefects(id: number){
    return this.http.get<Defect[]>(environment.apiBaseURI + '/Defect/ByAnimal/' + id);
  }

  getDefects(){
    return this.http.get<Defect[]>(environment.apiBaseURI + '/Defect');
  }

  getDefectById(id: number){
    return this.http.get(environment.apiBaseURI + '/Defect/' + id);
  }

  createDefect(defect: Defect){
    return this.http.post(environment.apiBaseURI + '/Defect', defect);
  }

  addDefectToAnimal(defect: Defect, animalId: number){
    return this.http.post(environment.apiBaseURI + '/Defect/' + defect.id + '/ToAnimal/' + animalId, defect);
  }

  updateDefect(id: number, defect: Defect){
    return this.http.put(environment.apiBaseURI + '/Defect/' + id, defect);
  }

  deleteDefect(id: number){
    return this.http.delete(environment.apiBaseURI + '/Defect/' + id)
  }

  deleteDefectFromAnimal(defectId: number, animalId: number){
    return this.http.delete(environment.apiBaseURI + '/Defect/' + defectId + '/FromAnimal/' + animalId)
  }
}
