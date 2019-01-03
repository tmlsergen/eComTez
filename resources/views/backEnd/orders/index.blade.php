@extends('backEnd.layouts.master')
@section('title','Sipariş Listesi')
@section('content')
    <div id="breadcrumb"> <a href="{{url('/admin')}}" title="Ana Sayfaya Dön" class="tip-bottom"><i class="icon-home"></i> Ana Sayfa</a> <a href="{{ url('admin/orders') }}" class="current">Siparişler</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                <h5>Sipraiş Listesi</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Sıra</th>
                        <th>Sipariş Numarası</th>
                        <th>Sipariş Veren</th>
                        <th>Adres</th>
                        <th>Şehir</th>
                        <th>Mahalle</th>
                        <th>Ülke</th>
                        <th>Telefon</th>
                        <th>Ödeme Methodu</th>
                        <th>Silme İşlemi</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i=0; ?>
                    @foreach($orders as $order)
                        <?php $i++; ?>
                        <tr class="gradeC">
                            <td>{{$i}}</td>
                            <td style="text-align:center; vertical-align: middle;">{{$order->id}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->name}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->address}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->city}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->state}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->country}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$order->mobile}}</td>
                            <td style="text-align: center; vertical-align: middle;">
                                @if($order->payment_method == 'CreditCart')
                                    Kredi Kartı
                                @else
                                    Nakit
                                @endif
                            </td>
                            <td style="text-align: center; vertical-align: middle;">
                                <a href="javascript:" rel="{{$order->id}}" rel1="delete-order" class="btn btn-danger btn-mini deleteRecord">Sil</a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@section('jsblock')
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/jquery.uniform.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/matrix.js')}}"></script>
    <script src="{{asset('js/matrix.tables.js')}}"></script>
    <script src="{{asset('js/matrix.popover.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script>
        $(".deleteRecord").click(function () {
            var id=$(this).attr('rel');
            var deleteFunction=$(this).attr('rel1');
            swal({
                title:'Emin Misiniz?',
                text:"Bu işlemi geri alma şansınız yoktur!",
                type:'warning',
                showCancelButton:true,
                confirmButtonColor:'#3085d6',
                cancelButtonColor:'#d33',
                confirmButtonText:'Sil',
                cancelButtonText:'İptal',
                confirmButtonClass:'btn btn-success',
                cancelButtonClass:'btn btn-danger',
                buttonsStyling:false,
                reverseButtons:true
            },function () {
                window.location.href="/admin/"+deleteFunction+"/"+id;
            });
        });
    </script>
@endsection