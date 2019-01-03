<!--sidebar-menu-->
<div id="sidebar"><a href="{{url('/admin')}}" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li{{$menu_active==1? ' class=active':''}}><a href="{{url('/admin')}}"><i class="icon icon-home"></i> <span>Dashboard</span></a>
        </li>
        <li class="submenu {{$menu_active==2? ' active':''}}"><a href="#"><i class="icon icon-th-list"></i> <span>Kategoriler</span></a>
            <ul>
                <li><a href="{{url('/admin/category/create')}}">Yeni Kategori Ekle</a></li>
                <li><a href="{{route('category.index')}}">Kategorileri Göster</a></li>
            </ul>
        </li>
        <li class="submenu {{$menu_active==3? ' active':''}}"><a href="#"><i class="icon icon-th-list"></i> <span>Ürünler</span></a>
            <ul>
                <li><a href="{{url('/admin/product/create')}}">Yeni Ürün Ekle</a></li>
                <li><a href="{{route('product.index')}}">Ürün Listesi</a></li>
            </ul>
        </li>
        <li class="submenu {{$menu_active==4? ' active':''}}"><a href="#"><i class="icon icon-th-list"></i> <span>Kuponlar</span></a>
            <ul>
                <li><a href="{{route('coupon.create')}}">Yeni Kupon Ekle</a></li>
                <li><a href="{{route('coupon.index')}}">Kuponları Listele</a></li>
            </ul>
        </li>
        <li class="submenu {{$menu_active==5? ' active':''}}"><a href="#"><i class="icon icon-th-list"></i> <span>Kullanıcılar</span></a>
            <ul>
                <li><a href="{{route('user.create')}}">Yeni Kullanıcı Ekle</a></li>
                <li><a href="{{route('user.index')}}">Kullanıcıları Listele</a></li>
            </ul>
        </li>
        <li class="submenu {{$menu_active==6? ' active':''}}"><a href="#"><i class="icon icon-th-list"></i> <span>Siparişler</span></a>
            <ul>
                <li><a href="{{url('/admin/orders')}}">Sipariş Listesi</a></li>
            </ul>
        </li>
    </ul>
</div>
<!--sidebar-menu-->