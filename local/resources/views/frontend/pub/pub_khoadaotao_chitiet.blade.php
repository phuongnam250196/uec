@extends('frontend.master')
@section('title', 'Khóa đào tạo')
@section('banner')
@include('frontend.slider.slider_pub')
@stop
@section('main')
@include('frontend.navbar.navPublic')

<section id="breadcrumb-link">
    <div class="container">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
            <li class="breadcrumb-item">Khóa đào tạo</li>
            <li class="breadcrumb-item active">Khóa đào tạo</li>
        </ul>
    </div>
</section>
<section id="dieuhuong-doc">
    <div class="container">
        <div class="row">
            <div class="col-md-8 baiviet">
                <!-- Thay đổi tại đây -->
                <div class="khoadaotao">
                    <div class="row">
                        <div class="col-lg-4">
                            <img class="card-img-top" src="{{asset('local/storage/app/khoadaotao/'.$kdt->training_img)}}">
                            <br>
                            <br>
                            <h4>Khóa học liên quan</h4>
                            @foreach($kdts as $k)
                            <div class="media">
                              <img src="{{asset('local/storage/app/khoadaotao/'.$k->training_img)}}" class="mr-2" style="width:70px;">
                              <div class="media-body">
                                <h4>{{$k->training_name}}</h4>
                                <p>Lorem ipsum...</p>
                              </div>
                            </div>
                            @endforeach
                        </div>
                        <div class="col-lg-8">
                            <div class="khoadaotao_title">
                                <h1>{{$kdt->training_name}}</h1>
                                <p>{{$kdt->created_at}}</p>
                            </div>
                            <div class="khoadaotao_content">
                                <p>Số lượng tuyển: {{$kdt->training_amount_student}}</p>
                                <p>Thời gian khóa học: {{$kdt->training_timeserving}}</p>
                                <p>Hạn nộp: {{$kdt->training_deadline}}</p>
                                <p>Địa chỉ: {{$kdt->training_address}}</p>
                                <p>Mô tả: {{$kdt->training_describe}}</p>
                                <p>Kĩ năng: {{$skill->skill_name}}</p>
                                <p>Khu vực: {{$area->area_name}}</p>
                                @if(!empty($enter->enterprise_name))
                                    <p>Doanh nghiệp: {{$enter->enterprise_name}}</p>
                                @endif
                            </div>
                            <br>
                            <div class="">
                                <h4 class="text-uppercase text-center">Thông tin liên hệ</h4>
                                <div class="">
                                    @if(!empty($enter->enterprise_people_name))
                                        <p>Thông tin liên hệ: {{$enter->enterprise_people_name}}</p>
                                    @endif
                                    @if(!empty($enter->enterprise_people_phone))
                                        <p>Số điện thoại: {{$enter->enterprise_people_phone}}</p>
                                    @endif
                                    @if(!empty($enter->enterprise_email))
                                        <p>Email: {{$enter->enterprise_email}}</p>
                                    @endif
                                </div>
                            </div>
                        </div>
                        
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