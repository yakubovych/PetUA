import { FormGroup, ValidatorFn, AbstractControl } from '@angular/forms';

export function PasswordValidator(): ValidatorFn {
    return (control: AbstractControl): {[key: string]: any} | null => 
    {
        const invalid = (HasNoLowerCase(control.value)
                        || HasNoUpperCase(control.value)
                        || HasNoDigit(control.value)
                        || HasNonAlphanumeric(control.value)
                        || (control.value.length != 8))

        return invalid ? {'invalidPassword': {value: control.value}} : null;
        
    }
}

function HasNoDigit(str) 
{
    return !(/[0-9]/.test(str));
}

function HasNoUpperCase(str) 
{
    return !(/[A-Z]/.test(str));
}

function HasNoLowerCase(str) 
{
    return !(/[a-z]/.test(str));
}

function HasNonAlphanumeric(str) 
{
    return (/[^A-Za-z0-9]+/.test(str));
}