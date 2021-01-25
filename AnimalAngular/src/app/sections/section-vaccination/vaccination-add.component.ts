import { Component } from "@angular/core";
import { Vaccination } from 'src/app/models/vaccination';
import { Router } from '@angular/router';
import { VaccinationService } from 'src/app/services/vaccination.service';

@Component({
    templateUrl: './vaccination-add.component.html'
})

export class VaccinationAddComponent {
    public vaccination: Vaccination = new Vaccination();
    public vaccinations: Vaccination[];
    public types = [];
    constructor(private router: Router, private vaccinationService: VaccinationService) {
        this.vaccinationService.getAllVaccinations()
            .subscribe((res: Vaccination[]) => {
                this.vaccinations = res;
                for (let i = 0; i < res.length; i++) {
                    this.types[i] = res[i].type;
                }
                this.types = this.types.filter((n, i) => this.types.indexOf(n) === i);
            });
    }

    save(vaccination: Vaccination) {
        console.log(vaccination);
        this.vaccinationService.createVaccination(vaccination).subscribe((response: Vaccination) => {
            this.vaccination = response;
            this.router.navigate(['/vaccinations']);
        });
    }

    cancel() {
        this.router.navigate(['/vaccinations']);
    }
}