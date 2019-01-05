<?php

namespace App\Http\Controllers;

use App\Cart_model;
use App\Orders_model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Mail\Order;

class OrdersController extends Controller
{
    public function index()
    {
        $session_id = Session::get('session_id');
        $cart_datas = Cart_model::where('session_id', $session_id)->get();
        $total_price = 0;
        foreach ($cart_datas as $cart_data) {
            $total_price += $cart_data->price * $cart_data->quantity;
        }
        $shipping_address = DB::table('delivery_address')->where('users_id', Auth::id())->first();
        return view('checkout.review_order', compact('shipping_address', 'cart_datas', 'total_price'));
    }

    public function order(Request $request)
    {
        $input_data = $request->all();
        $payment_method = $input_data['payment_method'];
        Orders_model::create($input_data);
        if ($payment_method == "COD") {
            return redirect('/cod');
        } else {
            return redirect('/pay-with-card');
        }
    }

    public function cod()
    {
        $user_order = Orders_model::where('users_id', Auth::id())->orderby('created_at', 'desc')->first();
        Cart_model::truncate();
        return view('payment.cod', compact('user_order'));
    }


    public function paycart()
    {
        $who_buying = Orders_model::where('users_id', Auth::id())->orderby('created_at', 'desc')->first();
        return view('payment.paycart', compact('who_buying'));
    }

    public function cartpayment(Request $request)
    {
        $data = $request->all();
        $this->validate($request, [
            'user_id' => 'required',
            'user_name' => 'required',
            'user_email' => 'required|email',
            'user_total' => 'required',
            'card_name' => 'required',
            'card_number' => 'required|integer',
            'date' => 'required|integer',
            'cvc' => 'required|integer',
            'card_type' => 'required',
        ]);
        Cart_model::truncate();

        \Mail::to(Auth::user())->send(new Order($data));
        return view('payment.payment', compact('data'));
    }


    public function indexAdmin()
    {
        $menu_active = 6;
        $orders = Db::table('orders')->get();

        return view('backEnd.orders.index', compact('orders','menu_active'));
    }

    public function destroy($id)
    {
        $del_order = Orders_model::findorfail($id);
        $del_order->delete();
        return back()->with('message', 'Silme işlemi başarılı');
    }
}
