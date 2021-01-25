import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SectionForgotPasswordComponent } from './section-forgot-password.component';

describe('SectionForgotPasswordComponent', () => {
  let component: SectionForgotPasswordComponent;
  let fixture: ComponentFixture<SectionForgotPasswordComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SectionForgotPasswordComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SectionForgotPasswordComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
