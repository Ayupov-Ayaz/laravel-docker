<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class FeedbackController extends Controller
{
    public function createPost(Request $request){
        $data = $request->all();

        if (
//            array_key_exists('name', $data) && strlen($data['name']) > 0 &&
//            array_key_exists('email', $data) && strlen($data['email']) > 0 &&
            array_key_exists('message', $data) && strlen($data['message']) > 0
        ) {
            Feedback::create($data);
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false
            ]);
        }
    }
}
