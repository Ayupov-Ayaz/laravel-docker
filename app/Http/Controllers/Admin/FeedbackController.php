<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class FeedbackController extends Controller
{
    public function index(){
        $feedback = Feedback::orderBy('id', 'desc')->paginate(15);;
        return view('admin.feedback.index', ['feedback' => $feedback]);
    }
}
