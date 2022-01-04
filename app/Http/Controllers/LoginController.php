<?php

namespace App\Http\Controllers;
use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index(Request $request)
    {
        // $hashar = app()->make('hash');
        
        $username = $request->input('email');
        $password = $request->input('password');

        $login = Users::where('email', $username)->first();
        
        
        if($login->password == $password)
        {
            $api_token = Str::random(40);
            $login->update([ 
                'api_token' => $api_token
            ]);
            
            return response()->json([
                'sucess' => true,
                'message' => 'Login berhasil',
                'data' => [
                    'login' => $login,
                    'api_token' => $api_token
                ]
            ]);
        }
        else
        {
            return response()->json([
                'sucess' => false,
                'message' => 'Login Failed',
                'data' => [
                    'login' => $login,
                ]
            ]);
        }

    }
}
