@extends('backEnd.layouts.master')
@section('title','Kullanıcı Ekle')
@section('content')
    <div id="breadcrumb"><a href="{{url('/admin')}}" title="Ana Sayfaya Dön" class="tip-bottom"><i
                    class="icon-home"></i> Ana Sayfa</a> <a href="{{route('user.index')}}">Kullanıcılar</a> <a href="#"
                                                                                                               class="current">Kullanıcı
            Ekle</a></div>
    <div class="container-fluid">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="widget-box">
            <div class="widget-title"><span class="icon"> <i class="icon-align-justify"></i> </span>
                <h5>Yeni Kullanıcı Ekle</h5>
            </div>
            <div class="widget-content nopadding">
                <form action="{{route('user.store')}}" method="post" class="form-horizontal">
                    <input type="hidden" name="_token" value="{{csrf_token()}}">

                    <div class="control-group">
                        <label for="user_name" class="control-label">İsim-Soyisim</label>
                        <div class="controls{{$errors->has('user_name')?' has-error':''}}">
                            <input type="text" name="user_name" id="user_name" class="form-control"
                                   value=""
                                   title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_name')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_email" class="control-label">Email</label>
                        <div class="controls{{$errors->has('user_email')?' has-error':''}}">
                            <input type="email" min="0" name="user_email" id="user_email" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_email')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_password" class="control-label">Şifre</label>
                        <div class="controls{{$errors->has('user_password')?' has-error':''}}">
                            <input type="text" min="0" name="user_password" id="user_password" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_password')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_address" class="control-label">Adres</label>
                        <div class="controls{{$errors->has('user_address')?' has-error':''}}">
                            <input type="text" min="0" name="user_address" id="user_address" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_address')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_city" class="control-label">Şehir</label>
                        <div class="controls{{$errors->has('user_city')?' has-error':''}}">
                            <input type="text" min="0" name="user_city" id="user_city" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_city')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_state" class="control-label">Mahalle</label>
                        <div class="controls{{$errors->has('user_state')?' has-error':''}}">
                            <input type="text" min="0" name="user_state" id="user_state" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_state')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_pincode" class="control-label">Posta Kodu</label>
                        <div class="controls{{$errors->has('user_pincode')?' has-error':''}}">
                            <input type="text" min="0" name="user_pincode" id="user_pincode" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_pincode')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_country" class="control-label">Mahalle</label>
                        <div class="controls{{$errors->has('user_country')?' has-error':''}}">
                            <select name="user_country" id="user_country" class="form-control" style="width: 400px;">
                                @foreach($countries as $country)
                                    <option value="{{$country->country_name}}">{{$country->country_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="user_mobile" class="control-label">Telefon</label>
                        <div class="controls{{$errors->has('user_mobile')?' has-error':''}}">
                            <input type="text" min="0" max="10" name="user_mobile" id="user_mobile" class="form-control"
                                   value="" title="" required="required" style="width: 400px;">
                            <span class="text-danger">{{$errors->first('user_mobile')}}</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="" class="control-label"></label>
                        <div class="controls">
                            <button type="submit" class="btn btn-success">Kullanıcıyı Ekle</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('jsblock')
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/bootstrap-colorpicker.js')}}"></script>
    <script src="{{asset('js/bootstrap-datepicker.js')}}"></script>
    <script src="{{asset('js/jquery.toggle.buttons.js')}}"></script>
    <script src="{{asset('js/masked.js')}}"></script>
    <script src="{{asset('js/jquery.uniform.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/matrix.js')}}"></script>
    <script src="{{asset('js/matrix.form_common.js')}}"></script>
    <script src="{{asset('js/wysihtml5-0.3.0.js')}}"></script>
    <script src="{{asset('js/jquery.peity.min.js')}}"></script>
    <script src="{{asset('js/bootstrap-wysihtml5.js')}}"></script>
    <script>
        $('.textarea_editor').wysihtml5();
    </script>
@endsection