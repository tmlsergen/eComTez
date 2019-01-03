@extends('frontEnd.layouts.master')
@section('title','Ödeme Sayfası')
@section('slider')
@endsection
@section('content')
    <div style="padding-top: 75px; padding-bottom: 200px;" class="container">
        <?php //dd($who_buying);exit; ?>
        <h3 class="text-center">Lütfen ödeme yapmak ve alışverişinize devam etmek için kart bilgilerinizi giriniz.</h3>
        <p class="text-center">Sipariş Kodunuz <b>{{$who_buying->id}}</b> ve Toplam Tutarınız <b>{{$who_buying->grand_total}}</b> TL 'dir. </p>

        <form action="{{url('payment-confirmed')}}" method="get">
            <input type="hidden" name="user_id" value="{{$who_buying->users_id}}">
            <input type="hidden" name="user_name" value="{{$who_buying->name}}">
            <input type="hidden" name="user_email" value="{{$who_buying->users_email}}">
            <input type="hidden" name="user_total" value="{{$who_buying->grand_total}}">

            <div class="form-group">
                <label for="card_name">Kart Sahibi</label>
                <input class="form-control" type="text" name="card_name">
            </div>

            <div class="form-group">
                <label for="card_number">Kart Numaranız</label>
                <input class="form-control" type="text" name="card_number">
            </div>

            <div class="form-group">
                <label for="date">Son Kullanma Tarihi</label>
                <input class="form-control" type="text" name="date">
            </div>

            <div class="form-group">
                <label for="cvc">CVC Kodu</label>
                <input class="form-control" type="text" name="cvc">
            </div>

            <div class="form-group">
                <label for="card_type">Kart Tipi</label>
                <input class="radio" type="radio" value="master" name="card_type">Master Kart <br>
                <input class="radio" type="radio" value="visa" name="card_type"> Visa
            </div>

            <div class="form-group">
                <button class="btn btn-success" style="width: 100%; height: 40px;" type="submit">Gönder <i class="fa fa-shopping-cart"></i></button>
            </div>

            <div class="form-group">
                @if(count($errors->all()))
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li> {{$error}} </li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>


        </form>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection