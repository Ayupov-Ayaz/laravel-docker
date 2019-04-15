<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ContactsController extends Controller
{
    public function index()
    {
        $contacts = [
            [
                'name' => 'Головной офис',
                'phone' => '+7 (843) 277-40-48',
                'phone_link' => '+78432774048',
                'email' => 'Khanifatullina@ncsd.ru',
                'address' => '420021, Россия, Республика Татарстан, г. Казань, ул. Тукая, д.152',
                'img' => asset('imgs/vacancies/1.jpg'),
            ],
            [
                'name' => 'Самаренкин Дмитрий Анатольевич',
                'position' => 'Председатель совета директоров АО «Казанский жировой комбинат»',
                'phone' => '+7 (843) 267-69-00',
                'phone_link' => '+78432676900',
                'email' => 'kgk@mrricco.ru',
                'img' => asset('imgs/vacancies/Самаренкин.png'),
            ],
            [
                'name' => 'PR отдел',
                'phone' => '+7 (843) 277-41-93',
                'phone_link' => '+78432774193',
                'email' => 'pr@nefco.ru',
                'address' => '420021, Россия, Республика Татарстан, г. Казань, ул. Тукая, д.152',
                'img' => asset('imgs/vacancies/3.jpg'),
            ],
            [
                'name' => 'Хакимов Марсель Рафаилович',
                'position' => 'Генеральный директор АО «Казанский жировой комбинат»',
                'phone' => '+7 (843) 267-69-03',
                'phone_link' => '+78432676903',
                'email' => 'gendir@mrricco.ru',
                'img' => asset('imgs/vacancies/Хакимов.png'),
            ],
        ];

        return view('site.contacts', ['contacts' => $contacts]);
    }


    public function sales()
    {
        $contacts = [
            [
                'name' => 'Садыков Ленар Айдарович',
                'position' => 'Заместитель директора по продажам',
                'phone' => '+7 (843) 277-40-48',
                'phone_link' => '+78432774048',
                'email' => 'L_Sadykov@ncsd.ru',
                'img' => asset('imgs/vacancies/1.jpg'),
            ],
            [
                'name' => 'Фахрутдинов Равиль Рафаилович',
                'position' => 'Руководитель направления по работе с прямыми сетями',
                'phone' => '+7 (843) 277-41-95',
                'phone_link' => '+78432774195',
                'email' => 'Fahrutdinov@ncsd.ru',
                'img' => asset('imgs/vacancies/3.jpg'),
            ],
        ];

        return view('site.contacts', ['contacts' => $contacts]);
    }


    public function directorate()
    {
        $contacts = [
            [
                'name' => 'Зайцева Инга Викторовна',
                'position' => 'Заместитель генерального директора по организационному развитию',
                'phone' => '+7 (843) 278-97-55',
                'phone_link' => '+78432789755',
                'email' => 'Zaitseva@ncsd.ru',
                'img' => asset('imgs/vacancies/1.jpg'),
            ],
        ];

        return view('site.contacts', ['contacts' => $contacts]);
    }



}
