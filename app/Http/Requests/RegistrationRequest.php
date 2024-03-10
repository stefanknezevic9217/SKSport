<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegistrationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            "ime"=>"required|regex:/^([A-Z][a-z]{2,13})(\s[A-Z][a-z]{2,13})*$/",
            "prezime"=>"required|regex:/^([A-Z][a-z]{2,13})(\s[A-Z][a-z]{2,13})*$/",
            "email"=>"required|email|unique:users",
            "password"=>"confirmed|required|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/",
            "grad"=>"required|exists:cities,id",
            "adresa"=>"required|regex:/^([A-Za-z0-9]{2,13})(\s[A-Z][a-z]{2,13})*\s[0-9]{1,3}$/",
            "pol"=>"required|exists:genders,id"
        ];
    }
    public function messages()
    {
        return [
            "required"=>"Polje :attribute je obavezno.",
            "regex"=>"Polje :attribute nije uneto ispravno.",
            "email.email"=>"Polje email nije uneto u ispravnom formatu.",
            "email.unique"=>"Email je već korišćen.",
            "password.confirmed"=>"Polja za password se ne poklapaju.",
            "exists"=>"Polje :attribute ne moze imati datu vrednost."


        ];
    }
}
