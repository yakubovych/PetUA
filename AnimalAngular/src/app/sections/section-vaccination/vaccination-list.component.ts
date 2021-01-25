import { Component } from "@angular/core";
import { Vaccination } from 'src/app/models/vaccination';
import { VaccinationService } from 'src/app/services/vaccination.service';

@Component({
    selector: 'app-vaccination-list',
    templateUrl: './vaccination-list.component.html'
})

export class VaccinationListComponent {
    public vaccinations: Vaccination[];
    constructor(private vaccinationService: VaccinationService) {
        this.vaccinationService.getAllVaccinations()
            .toPromise()
            .then((res: Vaccination[]) => {
                this.vaccinations = res;
        });
    }

    load() {
        this.vaccinationService.getAllVaccinations().subscribe((data: Vaccination[]) => this.vaccinations = data);
    }

    delete(id: number) {
        this.vaccinationService.deleteVaccination(id).subscribe(data => this.load());
    }
}