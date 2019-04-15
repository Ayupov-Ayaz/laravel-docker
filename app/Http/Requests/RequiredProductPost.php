<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequiredProductPost extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $arr = [
//            'youtube' => 'required',
            'fat' => 'required|integer|min:0',
            'exp' => 'required|integer|min:0',
            'packs' => 'required|integer|min:0',
            'calorie' => 'required|integer|min:0',
            'temperature_from' => 'required',
            'temperature_to' => 'required',
            'product_packs' => 'required|array'
        ];
        foreach (config('translatable.locales') as $locale) {
            $arr[$locale . '.name'] = 'required';
            $arr[$locale . '.details'] = 'required';
            $arr[$locale . '.description'] = 'required';
        }
        return $arr;
    }

    public function messages()
    {
        return [
            'required' => 'Необходимо заполнить поле',
        ];
    }
}
