@extends('frontend.master')
@section('title', 'Doanh nghiệp | Thông tin doanh nghiệp')
@section('banner')
<aside id="slide-sp">
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/bannertlu.png" style="width:100%" >
            </div>
            <div class="carousel-item">
                <img src="images/bannertlu.png" style="width:100%" alt="Chicago">
            </div>
            <div class="carousel-item">
                <img src="images/bannertlu.png" style="width:100%" alt="New York">
            </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
    </div>
</aside>
@stop
@section('main')
<br>
<section id="dieuhuong-doc">
    <div class="container">
        <div class="row">
            <div class="col-md-4 nav-doc">
                @include('frontend.doanhnghiep.nav.nav-enter')
            </div>
            <div class="col-md-8 baiviet">
                <div class="" style="background: white; margin-bottom: 15px;">
                    <div class="d-flex breadcrumb_title" style="padding-top: 5px;">
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Thông tin</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('enterprise')}}">Doanh nghiệp</a></li>
                              <li class="breadcrumb-item active">Thông tin</li>
                            </ul>
                      </div>
                    </div>
                </div>
                
                <div class="row std_row">
                    <div class="col-md-8 std_col" >
                        <div class="std_col_1" style="background: white;">
                            <div class="">
                                <h3 class="text-uppercase text-center">Thông tin tài khoản</h3>
                                <div class="std_col_row">
                                    <p><strong>Tài khoản: </strong>{{$data->user_name}}</p>
                                    <p><strong>Mật khẩu: </strong>*********** <a href="{{url('enterprise/change_password')}}/{{Auth::id()}}"><i class="fas fa-pencil-alt"></i> Đổi mật khẩu</a></p>
                                </div>
                            </div>
                            <br>
                            <div class="">
                                <h3 class="text-uppercase text-center">Thông tin doanh nghiệp</h3>
                                <div class="">
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tên công ty:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_full_name}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tên giao dịch:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_name}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Quy mô:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_size}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Mã số thuế:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_tax_code}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Địa chỉ:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_address}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Điện thoại:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_phone}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Email:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_email}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tỉnh/Thành phố:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->area_name}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Giới thiệu:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->enterprise_describe}}
                                        </div>
                                    </div>
                                    <br>
                                    <div class="text-center std_col_row">
                                        <a href="{{url('enterprise/update_info/'.$data->enterprise_id)}}" class="btn btn-outline-primary">Cập nhật</a>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 std_col">
                        <div class="" style="background: white">
                            <img onclick="a()"  style="width: 100%" src="{{asset('local/storage/app/public/'.$data->enterprise_logo)}}">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop