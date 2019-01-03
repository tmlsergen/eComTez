<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menu_active = 5;
        $users = User::all();
        return view('backEnd.users.index', compact('menu_active', 'users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $menu_active = 5;
        $countries = DB::table('countries')->get();
        return view('backEnd.users.create', compact('menu_active', 'countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $this->validate($request, [
                'user_name' => 'required',
                'user_email' => 'required|email',
                'user_password' => 'required',
                'user_address' => 'required',
                'user_city' => 'required',
                'user_state' => 'required',
                'user_pincode' => 'required|integer',
                'user_country' => 'required',
                'user_mobile' => 'required|integer',
            ]);

            $input_data = $request->all();

            DB::table('users')->insert([
                'name' => $input_data['user_name'],
                'email' => $input_data['user_email'],
                'password' => Hash::make($input_data['user_password']),
                'address' => $input_data['user_address'],
                'city' => $input_data['user_city'],
                'state' => $input_data['user_state'],
                'pincode' => $input_data['user_pincode'],
                'country' => $input_data['user_country'],
                'mobile' => $input_data['user_mobile']
            ]);

            return redirect('/admin/user')->with('message', 'Kullanıcı Ekleme İşlemi Başarılı!');
        } catch (\Exception $e) {
            return redirect('/admin/user')->with('message', 'Kullanıcı Ekleme İşlemi Başarısız!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu_active = 5;
        $user_edit = User::findOrFail($id);
        $countries = DB::table('countries')->get();
        return view('backEnd.users.edit', compact('menu_active', 'user_edit', 'countries'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'user_name' => 'required',
                'user_email' => 'required|email',
                'user_password' => 'required',
                'user_address' => 'required',
                'user_city' => 'required',
                'user_state' => 'required',
                'user_country' => 'required',
                'user_mobile' => 'required',
            ]);

            $input_data = $request->all();

            DB::table('users')->where('id', $id)->update([
                'name' => $input_data['user_name'],
                'email' => $input_data['user_email'],
                'password' => Hash::make($input_data['user_password']),
                'address' => $input_data['user_address'],
                'city' => $input_data['user_city'],
                'state' => $input_data['user_state'],
                'country' => $input_data['user_country'],
                'mobile' => $input_data['user_mobile']
            ]);

            return back()->with('message', 'Profil Güncellendi!');
        } catch (\Exception $e) {
            return redirect('/admin/user')->with('message', 'Güncelleme İşlemi Başarısız!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return back()->with('message', 'Kullanıcı Silindi!');
    }
}
