@extends('frontEnd.layouts.master')
@section('title','Kapıda Ödeme')
@section('slider')
@endsection
@section('content')
    <div style="padding-bottom: 200px; padding-top: 200px;" class="container">
        <h3 class="text-center">SİPARİŞİNİZ ALINDI</h3>
        <p class="text-center">Kapıda nakit ödeme seçeneğini kullandığınız için teşekkür ederiz.</p>
        <p class="text-center">Sizinle (<b>{{$user_order->users_email}}</b>) email adresinden yada (<b>{{$user_order->mobile}}</b>) telefon numarasından iletişim kuracağız.</p>
    </div>
@endsection