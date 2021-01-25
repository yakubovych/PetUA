import { Component, OnInit } from '@angular/core';
import { Animal } from 'src/app/models/animal';
import { Keeping } from 'src/app/models/keeping';
import { FormGroup, FormBuilder, FormArray, FormControl, Validators } from '@angular/forms';
import { AnimalService } from 'src/app/services/animal.service';
import { Router, ActivatedRoute } from '@angular/router';
import { KeepingService } from 'src/app/services/keeping.service';
import { VaccinationService } from 'src/app/services/vaccination.service';
import { Vaccination } from 'src/app/models/vaccination';
import { Needs } from 'src/app/models/needs';
import { image } from 'src/app/models/images';
import { Food } from 'src/app/models/food';
import { Defect } from 'src/app/models/defect';
import { Category } from 'src/app/models/category';
import { Address } from 'src/app/models/address';
import { AttitudeTo } from 'src/app/models/attitudeTo';
import { Processing } from 'src/app/models/processing';
import { NeedsService } from 'src/app/services/needs.service';
import { FoodService } from 'src/app/services/food.service';
import { AddressService } from 'src/app/services/address.service';
import { CategoryService } from 'src/app/services/category.service';
import { ProcessingService } from 'src/app/services/processing.service';
import { AttitudeToService } from 'src/app/services/attitude-to.service';
import { DefectService } from 'src/app/services/defect.service';

@Component({
  selector: 'app-animal-create',
  templateUrl: './animal-create.component.html',
  styleUrls: ['./animal-create.component.css']
})
export class AnimalCreateComponent implements OnInit {

  animal: Animal;
  keepings: Keeping[];
  needs: Needs[];
  foods: Food[];
  defects: Defect[];
  categories: Category[];
  addresses: Address[];
  attitudes: AttitudeTo[];
  processings: Processing[];
  vaccinations: Vaccination[];
  marks: Number[];
  images: image[];
  vaccinationsChecked: Object;
  processingsChecked: Object;
  attitudesChecked: Object;
  submitted = false;

  createForm = this.formBuilder.group({
    name: ["", Validators.required],
    dateOfBirth: [Date.now,  [Validators.required]],
    weight: [null,  [Validators.required, Validators.min(0)]],
    withersHeight: [null,  [Validators.required, Validators.min(0)]],
    isNew:[true],
    isAdopted: [false],
    isHidden: [false],
    neckCircumference: [null,  [Validators.required, Validators.min(0)]],
    continuatitonOfTreatment: [false],
    sterialization: [0],
    chipNumber: [0],
    categoryId: [0,  [Validators.required]],
    addressId: [0,  [Validators.required]],
    foodId: [0],
    gender: [0],
    needs: this.formBuilder.array([]),
    defects: this.formBuilder.array([]),
    keepings: this.formBuilder.array([]),
    attitudes: this.formBuilder.array([]),
    processings: this.formBuilder.array([]),
    vaccinations: this.formBuilder.array([]),
    images: this.formBuilder.array([])
  });
  keepingsForm = this.createForm.get('keepings') as FormArray;
  needsForm = this.createForm.get('needs') as FormArray;
  defectsForm = this.createForm.get('defects') as FormArray;
  vaccinationsForm = this.createForm.get('vaccinations') as FormArray;
  processingForm = this.createForm.get('processings') as FormArray;
  attitudesToForm = this.createForm.get('attitudes') as FormArray;

  constructor(private _animalService: AnimalService, private _router: Router, activeRoute: ActivatedRoute
    , private formBuilder: FormBuilder, private keepingService: KeepingService,
     private needsService: NeedsService, private foodService: FoodService
    , private categoryService: CategoryService, private addressesService: AddressService
    , private processingService: ProcessingService, private attitudesService: AttitudeToService
    , private vaccinationService: VaccinationService, private defectService: DefectService) {
    this.animal = new Animal();
  }

  ngOnInit() {
    this.keepingService.getAllKeepings()
      .subscribe((res: Keeping[]) => {
        this.keepings = res;
        for (const keeping of res) {
          this.keepingsForm.push(this.formBuilder.group({id: keeping.id,
                                                         name: keeping.name,
                                                         isChecked: false}));
                                                        } 
      });
      this.needsService.getAllNeeds()
      .subscribe((res: Needs[]) => {
        this.needs = res;
        for (const need of res) {
          this.needsForm.push(this.formBuilder.group({id: need.id,
                                                         name: need.name,
                                                         isChecked: false}));
                                                        } 
      });

      this.defectService.getDefects()
      .subscribe((res: Defect[]) => {
        this.defects = res;
        for (const defect of res) {
          this.defectsForm.push(this.formBuilder.group({id: defect.id,
                                                         name: defect.type,
                                                         isChecked: false}));
                                                        } 
      });

      this.processingService.getAllProcessings()
      .subscribe((res: Processing[]) => {
        this.processings = res;
        this.processingsChecked = [];
        for (const processing of res) {
          this.processingForm.push(this.formBuilder.group({id: processing.id,
            processingDate :Date.now,
            }));
          this.processingsChecked[processing.id] = false;
        }
      });

      this.attitudesService.getAllAttitudes()
      .subscribe((res: AttitudeTo[]) => {
        this.attitudes = res;
        this.attitudesChecked = [];
        for (const attitude of res) {
          this.attitudesToForm.push(this.formBuilder.group({id: attitude.id,
            mark :attitude.mark}));
          this.attitudesChecked[attitude.id] = false;
        }
        console.log(this.createForm.value);
        console.log(this.attitudes);

      });

    this.vaccinationService.getAllVaccinations()
      .subscribe((res: Vaccination[]) => {
        this.vaccinations = res;
        this.vaccinationsChecked = [];
        for (const vac of res) {
          this.vaccinationsForm.push(this.formBuilder.group({id: vac.id,
                                                              vaccinationDate : Date.now
                                                              }));
          this.vaccinationsChecked[vac.id] = false;

        }
        console.log(this.vaccinationsChecked);

        console.log(this.createForm.value);
        console.log(this.vaccinations);
      });
      this.categoryService.getAllCategories()
      .subscribe((res: Category[]) => {
        this.categories = res
      });
    this.foodService.getAllFoods()
      .subscribe((res: Food[]) => {
        this.foods = res
      });
    this.addressesService.getAllAddresses()
      .subscribe((res: Address[]) => {
        this.addresses = res
      });
    this.marks = [];
      for(var i = 1; i < 6; i++){
        this.marks.push(i);
      }
  }
  get formContols(){return this.createForm.controls;}

  onCheckVaccinationChange(id: number, isChecked: boolean) {

    if (isChecked) {
      this.vaccinationsChecked[id] = true;
    }
    else {
      this.vaccinationsChecked[id] = false;
    };
  }
  onCheckProcessingChange(id: number, isChecked: boolean) {

    if (isChecked) {
      this.processingsChecked[id] = true;
    }
    else {
      this.processingsChecked[id] = false;
    };
  }
  onCheckAttitidesChange(id: number, isChecked: boolean) {

    if (isChecked) {
      this.attitudesChecked[id] = true;
    }
    else {
      this.attitudesChecked[id] = false;
    };
  }
  getVaccinations() {
    this.animal.vaccinations = new Array<Vaccination>();
    for (var i = 0; i < this.vaccinations.length; i++) {
      if (this.vaccinationsChecked[this.vaccinations[i].id]) {
        this.vaccinations[i].vaccinationDate = this.createForm.value.vaccinations[i].vaccinationDate;
        this.animal.vaccinations.push(this.vaccinations[i]);
      } else {
      }
    };
    this.createForm.value.vaccinations = this.animal.vaccinations;
  }
  getProcessing() {
    this.animal.processings = new Array<Processing>();
    for (var i = 0; i < this.processings.length; i++) {
      if (this.processingsChecked[this.processings[i].id]) {
        this.processings[i].processingDate = this.createForm.value.processings[i].processingDate;
        this.animal.processings.push(this.processings[i]);
      } else {
      }
    };
    this.createForm.value.processings = this.animal.processings;
  }
  getAttitude() {
    this.animal.attitudes = new Array<AttitudeTo>();
    for (var i = 0; i < this.attitudes.length; i++) {
      if (this.attitudesChecked[this.attitudes[i].id]) {
        this.attitudes[i].mark = this.createForm.value.attitudes[i].mark;
        this.animal.attitudes.push(this.attitudes[i]);
      } else {
      }
    };
    this.createForm.value.attitudes = this.animal.attitudes;
  }
  getKeepings() {
    this.animal.keepings = new Array<Keeping>();
    for (var i = 0; i < this.keepings.length; i++) {
      if (this.createForm.value.keepings[i].isChecked) {
        this.animal.keepings.push(this.keepings[i]);
      } else {
      }
    }
    this.createForm.value.keepings = this.animal.keepings;
  }
  getDefects() {
    this.animal.defects = new Array<Defect>();
    for (var i = 0; i < this.defects.length; i++) {
      if (this.createForm.value.defects[i].isChecked) {
        this.animal.defects.push(this.defects[i]);
      } else {
      }
    }
    this.createForm.value.defects = this.animal.defects;
  }
  onFileChange(event) {
    this.animal.images = new Array<image>();
    let reader = new FileReader();
    if(event.target.files && event.target.files.length > 0) {
      let file = event.target.files[0];
      reader.readAsDataURL(file);
      reader.onload = () => {
        let res = new image;
        res.imageData = (<string>reader.result).split(',')[1];
        this.animal.images.push(res);
        this.createForm.value.images = this.animal.images;
        }
      };
     console.log(this.animal);
     console.log(this.createForm);
    }
  getNeeds() {
    this.animal.needs = new Array<Needs>();
    for (var i = 0; i < this.needs.length; i++) {
      if (this.createForm.value.needs[i].isChecked) {
        this.animal.needs.push(this.needs[i]);
      } else {
      }
    }
    this.createForm.value.needs = this.animal.needs;
  }
  create() {
    this.submitted = true;
    
    if (this.createForm.invalid) {
        return;
    }
    console.log(this.createForm.value);
    this.getVaccinations();
    this.getKeepings();
    this.getProcessing();
    this.getAttitude();
    this.getDefects();
    this.getNeeds();
    console.log(this.animal);
    const images = this.animal.images;
    this.animal = this.createForm.value;
    console.log(this.animal);
    this.animal.images = images;
    // this.animal = this.createForm.value;
    // this.getKeepings();
    this._animalService.createAnimal(this.animal).subscribe(data => this._router.navigateByUrl("/"));
  }
  cancel(){
    this._router.navigateByUrl("/");
  }
}
