@extends('frontEnd.layouts.master')
@section('title','Başarılı')
@section('content')
    <div style="padding-top: 50px; padding-bottom: 200px;" class="container">
        <?php //dd($data);exit; ?>
        <h3 class="text-center">Ödemeniz Gerçekleşti</h3>

        <p class="text-center">Lütfen (<b>{{$data['user_email']}}</b>) email adresine gelen mesajı kontrol edin.</p>
        <br>

        <h3 class="text-center">Ödeme Detayları</h3>

        <table style="width: 100%; margin-top: 70px;" class="table table-success">
            <tr>
                <th>Satın Alan</th>
                <th>Kart Sahibi</th>
                <th>Toplam Tutar</th>
            </tr>
            <tr>
                <td>{{$data['user_name']}}</td>
                <td>{{$data['card_name']}}</td>
                <td>{{$data['user_total']}}</td>
            </tr>
        </table>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection