@extends('frontEnd.layouts.master')
@section('title','Arama')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12 padding-right">
                <div class="features_items"><!--features_items-->
                    <?php
                    if ($searchData != "") {

                        echo '<h2 class="title text-center">' . $searchData . ' aramanıza ait sonuçlar</h2>';
                    } else {
                        echo '<h2 class="title text-center">Aradığınız ürün bulunamamıştır.</h2>';
                    }
                    ?>

                    @foreach($products as $product)
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <a href="{{url('/product-detail',$product->id)}}"><img
                                                    src="{{url('products/small/',$product->image)}}" alt=""/></a>
                                        <h2>$ {{$product->price}}</h2>
                                        <p>{{$product->p_name}}</p>
                                        <a href="{{url('/product-detail',$product->id)}}"
                                           class="btn btn-default add-to-cart">Ürünü Göster</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                    {{--<ul class="pagination">
                        <li class="active"><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">&raquo;</a></li>
                    </ul>--}}
                </div><!--features_items-->
            </div>
        </div>
    </div>
@endsection