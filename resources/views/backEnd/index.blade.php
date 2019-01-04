@extends('backEnd.layouts.master')
@section('title','Dashboard')
@section('content')
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"><a href="{{ url('/admin') }}" title="Ana Sayfa" class="tip-bottom"><i class="icon-home"></i>
                Ana Sayfa</a></div>
    </div>
    <!--End-breadcrumbs-->

    <!--Action boxes-->
    <div class="container-fluid">
        <div class="quick-actions_homepage">
            <ul class="quick-actions">
                <li class="bg_lb span12"><a href="{{ url('/admin') }}"> <i class="icon-dashboard"></i> Panele Hoşgeldiniz</a></li>
                <li class="bg_dy span12"><a href="{{ url('/') }}"> <i class="icon-shopping-cart"></i> Siteye Dönüş</a></li>
                <li class="bg_lg span12"><a href="{{ url('/admin/product') }}"> <i class="icon-signal"></i> Ürünler</a></li>
                <li class="bg_lo span12"><a href="{{ url('/admin/coupon') }}"> <i class="icon-th"></i> Kuponlar</a></li>
                <li class="bg_lv span12"><a href="{{ url('/admin/category') }}"> <i class="icon-th-list"></i> Kategoriler</a></li>
                <li class="bg_lb span12"><a href="{{ url('/admin/user') }}"> <i class="icon-pencil"></i> Kullanıcılar</a></li>
                <li class="bg_lr span12"><a href="{{ url('/admin/orders') }}"> <i class="icon-info-sign"></i> Siparişler</a></li>
            </ul>
        </div>
    </div>
@endsection
@section('jsblock')
    <script src="{{asset('js/excanvas.min.js')}}"></script>
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/jquery.flot.min.js')}}"></script>
    <script src="{{asset('js/jquery.flot.resize.min.js')}}"></script>
    <script src="{{asset('js/jquery.peity.min.js')}}"></script>
    <script src="{{asset('js/fullcalendar.min.js')}}"></script>
    <script src="{{asset('js/matrix.js')}}"></script>
    <script src="{{asset('js/matrix.dashboard.js')}}"></script>
    <script src="{{asset('js/jquery.gritter.min.js')}}"></script>
    <script src="{{asset('js/matrix.interface.js')}}"></script>
    <script src="{{asset('js/matrix.chat.js')}}"></script>
    <script src="{{asset('js/jquery.validate.js')}}"></script>
    <script src="{{asset('js/jquery.wizard.js')}}"></script>
    <script src="{{asset('js/jquery.uniform.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/matrix.popover.js')}}"></script>
    <script src="{{asset('js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/matrix.tables.js')}}"></script>
    <script src="{{asset('js/matrix.form_validation.js')}}"></script>
    <script type="text/javascript">
        // This function is called from the pop-up menus to transfer to
        // a different page. Ignore if the value returned is a null string:
        function goPage(newURL) {

            // if url is empty, skip the menu dividers and reset the menu selection to default
            if (newURL != "") {

                // if url is "-", it is this page -- reset the menu:
                if (newURL == "-") {
                    resetMenu();
                }
                // else, send page to designated URL
                else {
                    document.location.href = newURL;
                }
            }
        }

        // resets the menu selection upon entry to this page:
        function resetMenu() {
            document.gomenu.selector.selectedIndex = 2;
        }
    </script>
@endsection