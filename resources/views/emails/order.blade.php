<html lang="tr">
<head>
    <title>Order Mail</title>
    <meta charset="utf-8">
    <link href="{{asset('frontEnd/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/main.css')}}" rel="stylesheet">
    <link href="{{asset('frontEnd/css/responsive.css')}}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="{{asset('frontEnd/js/html5shiv.js')}}"></script>
    <script src="{{asset('frontEnd/js/respond.min.js')}}"></script>
    <![endif]-->
    <link rel="stylesheet" href="{{asset('easyzoom/css/easyzoom.css')}}" />
</head>
<body>
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
</body>
</html>