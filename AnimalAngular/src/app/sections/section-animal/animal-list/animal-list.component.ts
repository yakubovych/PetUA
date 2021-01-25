import { Component, OnInit } from '@angular/core';
import { AnimalService } from 'src/app/services/animal.service';
import { Animal } from 'src/app/models/animal';
import { DialogService } from 'src/app/services/dialog.service';
import { AdminToken } from 'src/app/models/adminToken';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { CategoryService } from 'src/app/services/category.service';
import { Category } from 'src/app/models/category';

@Component({
  selector: 'app-animal-list',
  templateUrl: './animal-list.component.html',
  styleUrls: ['./animal-list.component.css']
})
export class AnimalListComponent implements OnInit {

  categories: Category[];
  constructor(private _animalService: AnimalService,
  private _dialogService: DialogService,
  private categoryService: CategoryService,
  private authenticationService: AuthenticationService
  ) 
  {
  this.authenticationService.currentUser.subscribe(x => this.currentUser = x);
  this.categoryService.getAllCategories()
  .subscribe((res: Category[]) => {
    this.categories = res
  });
  }
  ngOnInit() 
  {
    this.getAnimals();
    
  }

  private filterNames = ["weight", "category", "dateOfBirth", "isDisabled", "isNew", "gender"];
  private weightFilter: string[] = [];
  private categoryFilter: string[] = [];
  private ageFilter: string[] = [];
  private isNewFilter: string[] = [];
  private withDisabilitiesFilter: string[] = [];
  private genderFilter: string[] = [];
  private requestUrl : string ='?';

  currentUser: AdminToken;
  animals: Animal[];
  
  getAnimals(){
    this._animalService.getAllAnimals()
      .subscribe((res : any) => {
        this.animals = res.data;
      });
  }
  getAge(dateOfBirth){
    var today = new Date();
    var birthDay = new Date(dateOfBirth);
    var age = today.getFullYear() - birthDay.getFullYear() - 1;
  

    if(age < 0) age = 0;
    return age 
  }
  getMonth(dateOfBirth){
    var today = new Date();
    var birthDay = new Date(dateOfBirth);
    var months = (today.getFullYear() - birthDay.getFullYear()) * 12;
    months += today.getMonth() - birthDay.getMonth();
    return months;
  }
  getCategory(animalCategory){
    for(let i = 0; i<this.categories.length; i++){
        if(animalCategory === this.categories[i].id) return this.categories[i].name
    }
  }
  
  getFiltratedAnimals(params: string){
    this._animalService.getAllAnimalsByParam(params)
    .subscribe((res : Animal[]) => {
      this.animals = res;
    });
  }

  delete(animal: Animal) {
    this._dialogService.openConfirmDialog('Are you sure to delete this record ?')
        .afterClosed().subscribe(res =>{
          if(res){
            this._animalService.deleteAnimal(animal.id)
       .subscribe(data => this.getAnimals());
          }
        });
  }

  onToggle( event: any){
    if(event.target.name === this.filterNames[0]){
      this.formArray(event, this.weightFilter);
    }
    else if(event.target.name === this.filterNames[1])
    {
      this.formArray(event, this.categoryFilter);
    }
    else if(event.target.name === this.filterNames[2])
    {
      this.formArray(event, this.ageFilter);
    }
    else if(event.target.name === this.filterNames[3])
    {
      this.formArray(event, this.withDisabilitiesFilter);
    }
    else if(event.target.name === this.filterNames[4])
    {
      this.formArray(event, this.isNewFilter);
    }
    else if(event.target.name === this.filterNames[5])
    {
      this.formArray(event, this.genderFilter);
    }
    this.getFiltratedAnimals(this.formUrl());
    console.log(this.formUrl());
  }

  formArray(event: any, arr: string[]){
    if(event.target.checked)
    {
      arr.push(event.target.value);
    }
    else{
      arr.splice(arr.indexOf(event.target.value, 0), 1);
    }
  }

  formUrl(): string {
    var filters: string[] = [];
    if(this.weightFilter.length != 0)
    {
      filters.push(this.filterNames[0] + '=' + this.weightFilter.join(','));
    }
    if(this.categoryFilter.length != 0)
    {
      filters.push(this.filterNames[1] + '=' + this.categoryFilter.join(','));
    }
    if(this.ageFilter.length != 0)
    {
      filters.push(this.filterNames[2] + '=' + this.ageFilter.join(','));
    }
    if(this.withDisabilitiesFilter.length != 0)
    {
      filters.push(this.filterNames[3] + '=' + this.withDisabilitiesFilter.join(','));
    }
    if(this.isNewFilter.length != 0)
    {
      filters.push(this.filterNames[4] + '=' + this.isNewFilter.join(','));
    }
    if(this.genderFilter.length != 0)
    {
      filters.push(this.filterNames[5] + '=' + this.genderFilter.join(','));
    }
    return this.requestUrl + filters.join("&");
  }
}
