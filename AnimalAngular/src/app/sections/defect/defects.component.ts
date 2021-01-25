import { Component } from "@angular/core";
import { Defect } from '../../models/defect';
import { DefectService } from '../../services/defect.service';

@Component({
    selector: 'app-defects',
    templateUrl: './defects.component.html'
})

export class DefectsComponent {
    public defects: Defect[];

    constructor(private defectService: DefectService) {
        this.defectService.getDefects()
            .toPromise()
            .then((result: Defect[]) => {
                this.defects = result;
        });
    }

    load() {
        this.defectService.getDefects().subscribe((data: Defect[]) => this.defects = data);
    }

    delete(id: number) {
        this.defectService.deleteDefect(id).subscribe(data => this.load());
    }
}