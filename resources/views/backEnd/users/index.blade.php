@extends('backEnd.layouts.master')
@section('title','Kullanıcı Listesi')
@section('content')
    <div id="breadcrumb"> <a href="{{url('/admin')}}" title="Ana Sayfaya Dön" class="tip-bottom"><i class="icon-home"></i> Ana Sayfa</a> <a href="{{route('user.index')}}" class="current">Kullanıcılar</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                <h5>Kullanıcı Listesi</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered data-table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Kullanıcı Adı</th>
                        <th>Email</th>
                        <th>Adres</th>
                        <th>Şehir</th>
                        <th>Mahalle</th>
                        <th>Ülke</th>
                        <th>Telefon</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i=0; ?>
                    @foreach($users as $user)
                        <?php $i++; ?>
                        <tr class="gradeC">
                            <td>{{$i}}</td>
                            <td style="vertical-align: middle;">{{$user->id}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->name}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->email}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->address}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->city}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->state}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->country}}</td>
                            <td style="text-align: center; vertical-align: middle;">{{$user->mobile}}</td>
                            <td style="text-align: center; vertical-align: middle;">
                                <a href="{{route('user.edit',$user->id)}}" class="btn btn-primary btn-mini">Güncelle</a>
                                <a href="javascript:" rel="{{$user->id}}" rel1="delete-user" class="btn btn-danger btn-mini deleteRecord">Sil</a>
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