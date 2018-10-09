@extends('frontend.master')
@section('title', 'Tìm việc')
@section('banner')
@include('frontend.slider.slider_pub')
@stop
@section('main')
@include('frontend.navbar.navPublic')

<section id="breadcrumb-link">
    <div class="container">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
            <li class="breadcrumb-item active">Tìm việc</li>
        </ul>
    </div>
</section>
<section id="dieuhuong-doc">
    <div class="container">
        <div class="row">
            <div class="col-md-8 baiviet">
                <!-- Thay doi tai day -->
                <div class="">
                    <div class="tin_detail text-center">
                        <h3 class="text-uppercase">vị trí tuyển dụng</h3>
                        <h1>{{$timviec->recruitment_name}}</h1>
                        <p>{{$enter->enterprise_address}}</p>
                    </div>
                    <hr>
                    <hr>
                    <div class="row">
                        <div class="col-lg-6">
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                        </div>
                        <div class="col-lg-6">
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                            <p><i class="fas fa-user"></i> Số lượng cần tuyển: <strong>02</strong></p>
                        </div>
                    </div>
                    <hr>
                    <div class="tin_detail_content">
                        <h4 class="text-uppercase">Mô tả công việc</h4>
                        <div class="">
                            {!! $timviec->recruitment_describe !!}
                        </div>
                    </div>
                    <br>
                    <div class="tin_detail_content">
                        <h4 class="text-uppercase">Yêu cầu công việc</h4>
                        <div class="">
                            {!! $timviec->recruitment_requirements !!}
                        </div>
                    </div>
                    <br>
                    <div class="tin_detail_content">
                        <h4 class="text-uppercase">Quyền lợi</h4>
                        <div class="">
                            {!! $timviec->recruitment_benefit !!}
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <div class="">
                    <h4 class="text-uppercase text-center">Thông tin liên hệ</h4>
                    <div class="">
                        <p>Thông tin liên hệ: {{$enter->enterprise_people_name}}</p>
                        <p>Số điện thoại: {{$enter->enterprise_people_phone}}</p>
                        <p>Email: {{$enter->enterprise_email}}</p>
                    </div>
                </div>
                <!-- End thay đổi -->
            </div>
            <div class="col-md-4 nav-doc">
                @include('frontend.navbar.navPublic_doc')
            </div>
        </div>
    </div>
</section>
<br>
@stop