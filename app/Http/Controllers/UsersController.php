<?php

namespace App\Http\Controllers;
use App\Models\Users;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function getAll()
    {
        $data = Users::all();

        return $data;
    }

    public function create(Request $request)
    {
        $data = Users::create([
            // 'id_user' => $request->id_user,
            'nama_user' => $request->nama_user,
            'username' => $request->username,
            'email' => $request->email,
            'password' => $request->password
        ]);
        
        return $data;
    }

    public function update(Request $request)
    {
        $data = Users::find($request->id_user);

        $data->update($request->except('id_user'));
        
        return $data;
    }

    public function delete(Request $request)
    {
        $data = Users::find($request->id_user);

        $data->delete();

        return null;
    }
}
