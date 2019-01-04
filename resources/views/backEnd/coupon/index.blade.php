@extends('backEnd.layouts.master')
@section('title','Kuponlar')
@section('content')
    <div id="breadcrumb"><a href="{{url('/admin')}}" title="Ana Sayfaya Git" class="tip-bottom"><i class="icon-home"></i>
            Ana Sayfa</a> <a href="{{route('coupon.index')}}" class="current">Kuponlar</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"><span class="icon"><i class="icon-th"></i></span>
                <h5>Kupon Listesi</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Sıra Numarası</th>
                        <th>Kupon Kodu</th>
                        <th>Miktar</th>
                        <th>Miktar Tipi</th>
                        <th>Son Kullanma Tarihi</th>
                        <th>Durum</th>
                        <th>İşlem</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i = 0; ?>
                    @foreach($coupons as $coupon)
                        <?php $i++; ?>
                        <tr class="gradeC">
                            <td>{{$i}}</td>
                            <td style="vertical-align: middle;">{{$coupon->coupon_code}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$coupon->amount}} %</td>
                            <td style="text-align: center; vertical-align: middle;">{{$coupon->amount_type}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$coupon->expiry_date}}</td>
                            <td style="text-align: center; vertical-align: middle;">
                                {{$coupon->status==1?'Active':'Disable'}}
                            </td>
                            <td style="text-align: center; vertical-align: middle;">
                                <a href="{{route('coupon.edit',$coupon->id)}}" class="btn btn-primary btn-mini">Güncelle</a>
                                <a href="javascript:" rel="{{$coupon->id}}" rel1="delete-coupon"
                                   class="btn btn-danger btn-mini deleteRecord">Sil</a>
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
            var id = $(this).attr('rel');
            var deleteFunction = $(this).attr('rel1');
            swal({
                title: 'Emin Misiniz',
                text: "Bu işlemin geri dönüşü yok!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Sil',
                cancelButtonText: 'İptal',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }, function () {
                window.location.href = "/admin/" + deleteFunction + "/" + id;
            });
        });
    </script>
@endsection