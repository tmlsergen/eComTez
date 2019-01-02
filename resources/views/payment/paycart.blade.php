@extends('frontEnd.layouts.master')
@section('title','Review Order Page')
@section('slider')
@endsection
@section('content')
    <div class="container">
        <h3 class="text-center">YOUR ORDER HAS BEEN PLACED</h3>
        <p class="text-center">Sipariş Kodunuz <b>{{$who_buying->id}}</b> ve Toplam Tutarınız <b>{{$who_buying->grand_total}}</b> TL 'dir. </p>
        <p class="text-center">Lütfen ödeme yapmak için kart bilgilerinizi giriniz.</p>

        <form action="{{url('payment-confirmed')}}">
            <input type="hidden" name="user_id" value="{{$who_buying->user_id}}">
        </form>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection