import { Component, OnInit } from '@angular/core';
import { Animal } from 'src/app/models/animal';
import { AnimalService } from 'src/app/services/animal.service';
import { Router, ActivatedRoute } from '@angular/router';
import { Defect } from 'src/app/models/defect';
import { DefectService } from 'src/app/services/defect.service';
import { DialogService } from 'src/app/services/dialog.service';
import { AdminToken } from 'src/app/models/adminToken';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Category } from 'src/app/models/category';

@Component({
  selector: 'app-animal-item',
  templateUrl: './animal-item.component.html',
  styleUrls: ['./animal-item.component.css']
})
export class AnimalItemComponent implements OnInit {

  currentUser: AdminToken;
  id: number;
  animal: Animal = new Animal();
  age: number;
  defect: Defect = new Defect();

  disabled: string = '';
  allDefects: Defect[];
  animalDefects: Defect[];
  constructor(private authenticationService: AuthenticationService,private defectService: DefectService,
    private _dialogService: DialogService,
    private _animalService: AnimalService,
     private _router: Router,
     activeRoute: ActivatedRoute) {
    this.authenticationService.currentUser.subscribe(x=> this.currentUser = x);
    this.id = Number.parseInt(activeRoute.snapshot.params["id"]);
    this.defectService.getDefects().toPromise().then((result: Defect[]) => {
      this.allDefects = result;
    });

    this.defectService.getAnimalDefects(this.id).toPromise().then((result: Defect[]) => {
      this.animalDefects = result;
    });
   }

  ngOnInit() {
    if(this.id){
      this._animalService.getById(this.id)
      .subscribe((data: Animal) => {
        this.animal = data;
        if (this.animal.defects.length > 0) {
          this.disabled = 'Disabled';
        }
     
        console.log(this.animal);
      });
    }
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
  load(){
    this._animalService.getById(this.id).subscribe((data: Animal) => {
        this.animal = data;
    });
  }

  addDefectToAnimal(defect: Defect, animalId: number){
    this.defectService.addDefectToAnimal(defect, animalId).subscribe((response: Defect) => {
        this.defect = response;
        this.load();
        this._router.navigate(['/animalItem/', this.id]);
      });
  }

  deleteDefectFromAnimal(defectId: number, animalId: number){
    this.defectService.deleteDefectFromAnimal(defectId, animalId).subscribe(data => 
      this._router.navigate(['/animalItem/', this.id]));
  }

  moveToAdopted(){
    this._dialogService.openConfirmDialog('Are you sure to move this record ?')
        .afterClosed().subscribe(res =>{
          if(res){
            this.animal.isAdopted = !this.animal.isAdopted;
    this._animalService.editAnimal(this.animal).subscribe(data => this._router.navigateByUrl("/"));
          }
        });
  }

  moveToHidden(){
    this._dialogService.openConfirmDialog('Are you sure to move this record ?')
        .afterClosed().subscribe(res =>{
          if(res){
            this.animal.isHidden = !this.animal.isHidden;
            this.animal.images = null;
    this._animalService.editAnimal(this.animal).subscribe(data => this._router.navigateByUrl("/"));
          }
        });
  }

}
