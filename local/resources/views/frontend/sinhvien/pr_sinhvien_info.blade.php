@extends('frontend.master')
@section('title', 'Sinh viên | Thông tin cá nhân')
@section('banner')
@include('frontend.slider.slider_pr')
@stop
@section('main')
<br>
<section id="dieuhuong-doc">
    <div class="container">
        <div class="row">
            <div class="col-md-4 nav-doc">
                @include('frontend.sinhvien.nav.nav-student')
            </div>
            <div class="col-md-8 baiviet">
                <div class="" style="background: white; margin-bottom: 15px;">
                    <div class="d-flex breadcrumb_title" style="padding-top: 5px;">
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Thông tin</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('student')}}">Sinh viên</a></li>
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
                                    <p><strong>Tài khoản: </strong>{{$data->student_code}} </p>
                                    <p><strong>Mật khẩu: </strong>*********** <a href="{{url('student/reset_password')}}"><i class="fas fa-pencil-alt"></i> Đổi mật khẩu</a></p>
                                </div>
                            </div>
                            <br>
                            <div class="">
                                <h3 class="text-uppercase text-center">Thông tin cá nhân</h3>
                                <div class="">
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Mã sinh viên:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_code}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Họ và tên:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$data->student_name}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Ngày sinh</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_birthday}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Giới tính</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_gender}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Chuyên ngành</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->specialize_name}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Quê quán</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_home_town}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Nơi ở hiện tại:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_address}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Điện thoại:</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_phone}}
                                        </div>
                                    </div>
                                    <br>
                                </div>
                            </div>
                            <div class="">
                                <h3 class="text-uppercase text-center">Thông tin việc làm</h3>
                                <div class="">
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tình trạng việc làm</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_employment_status}}
                                        </div>
                                    </div>
                                    @if(!empty($data->student_employment_status))
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tên việc</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$data->student_employment_name}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Công ty</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_company_name}}
                                        </div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Thời gian làm việc</strong></p>
                                        </div>
                                        <div class="col-md-9">
                                            {{$data->student_timeserving}}
                                        </div>
                                    </div>
                                    @endif
                                    <br>
                                    <div class="text-center std_col_row">
                                        <a href="{{url('student/update_info')}}" class="btn btn-outline-primary">Cập nhật</a>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 std_col">
                        <div class="" style="background: white">
                            <img style="width: 100%" src="http://baoquocte.vn/stores/news_dataimages/nguyennga/122017/01/14/143816_4_PQYT.jpg" alt="">
                            <input type="file" name="file" id="file" class="inputfile" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop