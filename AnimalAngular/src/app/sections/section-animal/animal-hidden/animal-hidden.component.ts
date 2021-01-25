import { Component, OnInit } from '@angular/core';
import { AnimalService } from 'src/app/services/animal.service';
import { DialogService } from 'src/app/services/dialog.service';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { AdminToken } from 'src/app/models/adminToken';
import { Animal } from 'src/app/models/animal';
import { Category } from 'src/app/models/category';
import { CategoryService } from 'src/app/services/category.service';

@Component({
  selector: 'app-animal-hidden',
  templateUrl: './animal-hidden.component.html',
  styleUrls: ['./animal-hidden.component.css']
})
export class AnimalHiddenComponent implements OnInit {
  categories: Category[];

  constructor(private _animalService: AnimalService,
    private _dialogService: DialogService,
    private categoryService: CategoryService,

    private authenticationService: AuthenticationService
    ) {
    this.authenticationService.currentUser.subscribe(x => this.currentUser = x);
    this.categoryService.getAllCategories()
    .subscribe((res: Category[]) => {
      this.categories = res
    });
  }
  
  
    ngOnInit() {
      this.getAnimals();
    }
  
    currentUser: AdminToken;
    animals: Animal[];
  
    getAnimals(){
      this._animalService.getAllHiddenAnimals()
        .subscribe((res : Animal[]) => {
          this.animals = res;
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
}
  