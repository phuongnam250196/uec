@extends('frontend.master')
@section('title', 'Doanh nghiệp | Cập nhật thông tin')
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
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Cập nhật doanh nghiệp</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('enterprise')}}">Doanh nghiệp</a></li>
                              <li class="breadcrumb-item active">Cập nhật</li>
                            </ul>
                      </div>
                    </div>
                </div>
                

                <div class="row std_row">
                    <div class="col-md-8 std_col" >
                        <div class="std_col_1" style="background: white;">
                            <div class="change_password">
                                <form method="POST">
                                  <div class="form-group">
                                    <label>Mã doanh nghiệp</label>
                                    <input type="text" class="form-control" name="enterprise_name" value="{{$data->enterprise_name}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Tên doanh nghiệp</label>
                                    <input type="text" class="form-control" name="enterprise_full_name" value="{{$data->enterprise_full_name}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <input type="text" class="form-control" name="enterprise_address" value="{{$data->enterprise_address}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Quy mô</label>
                                    <input type="number" class="form-control" name="enterprise_size" value="{{$data->enterprise_size}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Website</label>
                                    <input type="text" class="form-control" name="enterprise_web" value="{{$data->enterprise_web}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Giới thiệu doanh nghiệp</label>
                                    <textarea name="enterprise_describe" class="form-control" cols="30" rows="3">{{$data->enterprise_describe}}</textarea>
                                  </div>
                                  <div class="form-group">
                                    <label>Người liên hệ</label>
                                    <input type="text" class="form-control" name="enterprise_people_name" value="{{$data->enterprise_people_name}}">
                                  </div>
                                  <div class="form-group">
                                    <label>Phone người liên hệ</label>
                                    <input type="number" class="form-control" name="enterprise_people_phone" value="{{$data->enterprise_people_phone}}">
                                  </div>
                                  
                                  <button type="submit" class="btn btn-outline-primary">Cập nhật</button>
                                  <a href="{{url('enterprise/info')}}" class="btn btn-outline-secondary">Hủy bỏ</a>
                                  {{csrf_field()}}
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 std_col">
                        <div class="" style="background: white">
                            <img onclick="a()"  style="width: 100%" src="{{asset('local/storage/app/public/'.$data->enterprise_logo)}}">
                            <form class="up_img" enctype="multipart/form-data" method="POST">
                                <div class="form-group">
                                  <input type="file" name="dn_logo" class="form-control" hidden>
                                </div>
                                <div class="form-group ">
                                  <button class="btn btn-outline-info" name="save" value="save" type="submit">Upload Image</button>
                                </div>
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            </form>
                            <script>
                                function a() {
                                    $('input[name="dn_logo"]').trigger('click');
                                }                            
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop