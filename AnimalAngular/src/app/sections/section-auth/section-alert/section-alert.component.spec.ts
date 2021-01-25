import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SectionAlertComponent } from './section-alert.component';

describe('SectionAlertComponent', () => {
  let component: SectionAlertComponent;
  let fixture: ComponentFixture<SectionAlertComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SectionAlertComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SectionAlertComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
