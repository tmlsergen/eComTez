@extends('frontEnd.layouts.master')
@section('title','eCom')
@section('slider')
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                @include('frontEnd.layouts.category_menu')
            </div>
            <div class="col-sm-9 padding-right">
                @if(Session::has('message'))
                    <div class="alert alert-success text-center" role="alert">
                        {{Session::get('message')}}
                    </div>
                @endif

                @if(Session::has('comment_message'))
                    <div class="alert alert-success text-center" role="alert">
                        {{Session::get('comment_message')}}
                    </div>
                @endif

                <div class="product-details"><!--product-details-->

                    <div class="col-sm-5">
                        <div class="easyzoom easyzoom--overlay easyzoom--with-thumbnails">
                            <a href="{{url('products/large',$detail_product->image)}}">
                                <img src="{{url('products/small',$detail_product->image)}}" alt="" id="dynamicImage"/>
                            </a>
                        </div>

                        <ul class="thumbnails" style="margin-left: -10px;">
                            <li>
                                @foreach($imagesGalleries as $imagesGallery)
                                    <a href="{{url('products/large',$imagesGallery->image)}}"
                                       data-standard="{{url('products/small',$imagesGallery->image)}}">
                                        <img src="{{url('products/small',$imagesGallery->image)}}" alt="" width="75"
                                             style="padding: 8px;">
                                    </a>
                                @endforeach
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-7">
                        <form action="{{route('addToCart')}}" method="post" role="form">
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <input type="hidden" name="products_id" value="{{$detail_product->id}}">
                            <input type="hidden" name="product_name" value="{{$detail_product->p_name}}">
                            <input type="hidden" name="product_code" value="{{$detail_product->p_code}}">
                            <input type="hidden" name="product_color" value="{{$detail_product->p_color}}">
                            <input type="hidden" name="price" value="{{$detail_product->price}}" id="dynamicPriceInput">
                            <div class="product-information"><!--/product-information-->
                                <h2>{{$detail_product->p_name}}</h2>
                                <p>Ürün Kodu: {{$detail_product->p_code}}</p>
                                <span>
                            <select name="size" id="idSize" class="form-control">
                        	<option value="">Tip Seçiniz</option>
                            @foreach($detail_product->attributes as $attrs)
                                    <option value="{{$detail_product->id}}-{{$attrs->size}}">{{$attrs->size}}</option>
                                @endforeach
                        </select>
                        </span><br>
                                <span>
                            <span id="dynamic_price">{{$detail_product->price}} TL </span>
                            <label>Miktar <abel id="tSctock">({{$totalStock}})</abel>:</label>
                            <input type="text" name="quantity" value="1" id="inputStock"/>
                            <input type="hidden" name="controlQua" value="" id="controlQua"/>
                            @if($totalStock>0)
                                        <button type="submit" class="btn btn-fefault cart" id="buttonAddToCart">
                                <i class="fa fa-shopping-cart"></i>
                                Sepete Ekle
                            </button>
                                    @endif
                        </span>
                                <p><b>Stok Durumu:</b>
                                    @if($totalStock>0)
                                        <span id="availableStock">Stokta Var</span>
                                    @else
                                        <span id="availableStock">Kalmadı!</span>
                                    @endif
                                </p>
                                <p><b>Durum:</b> Sıfır</p>
                            </div><!--/product-information-->
                        </form>

                    </div>
                </div><!--/product-details-->

                <div class="category-tab shop-details-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#details" data-toggle="tab">Ürün Detayı</a></li>
                            <li><a href="#reviews" data-toggle="tab">Yorumlar</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="details">
                            {{$detail_product->description}}
                        </div>

                        <div class="tab-pane fade" id="reviews">

                            <div class="col-sm-12">
                                @if($comments)
                                    @foreach($comments as $comment)
                                        <form action="/comments/{{$comment->id}}" method="get">
                                            @csrf
                                            <ul>
                                                <li><a href=""><i class="fa fa-user"></i>{{$comment->title}}</a></li>
                                            </ul>
                                            <input type="hidden" name="comment_id" value="{{$comment->id}}">
                                            <p>{{$comment->description}}</p>
                                            @if($comment->user_id == \Illuminate\Support\Facades\Auth::id())
                                                <button type="submit" class="btn btn-success">Yorumu Sil</button>
                                            @endif
                                            <div style="margin-bottom: 10px;"></div>
                                        </form>
                                    @endforeach
                                @endif

                                <br>
                                <p><b>Bir Yorum Yazın!</b></p>

                                <form action="/comments" method="post">
                                    @csrf
                                    <span>
										<input class="pull-left" type="text" name="title" placeholder="Baslik"/>
									</span>
                                    <textarea name="description" placeholder="Açıklama..."></textarea>
                                    <input type="hidden" name="products_id" value="{{$detail_product->id}}">
                                    <input type="hidden" name="user_id"
                                           value="{{\Illuminate\Support\Facades\Auth::id()}}">
                                    <button type="submit" class="btn btn-default pull-right">
                                        Gönder
                                    </button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div><!--/category-tab-->

            </div>
        </div>
    </div>
@endsection