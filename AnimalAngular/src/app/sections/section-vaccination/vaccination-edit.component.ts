import { Component } from "@angular/core";
import { Vaccination } from 'src/app/models/vaccination';
import { VaccinationService } from 'src/app/services/vaccination.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
    templateUrl: './vaccination-edit.component.html'
})

export class VaccinationEditComponent {
    public vaccination: Vaccination = new Vaccination();
    public vaccinations: Vaccination[];
    private id: number;
    public types = [];
    constructor(private vaccinationService: VaccinationService, private router: Router, private activateRoute: ActivatedRoute) {
        this.id = activateRoute.snapshot.params["id"];
        this.vaccinationService.getVaccinationById(this.id).subscribe((result: Vaccination) => {
            this.vaccination = result;
        });
        this.vaccinationService.getAllVaccinations()
            .subscribe((res: Vaccination[]) => {
                this.vaccinations = res;
                for (let i = 0; i < res.length; i++) {
                    this.types[i] = res[i].type;
                }
                this.types = this.types.filter((n, i) => this.types.indexOf(n) === i);
            });
    }

    save(vaccination: Vaccination){
        console.log(vaccination);
        this.vaccinationService.updateVaccination(this.id, vaccination).subscribe(resp => {
            this.router.navigate(['/vaccinations']);
        });
    }

    cancel(){
        this.router.navigate(['/vaccinations']);
    }
}