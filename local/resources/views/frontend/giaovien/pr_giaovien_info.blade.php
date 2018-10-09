@extends('frontend.master')
@section('title', 'GV | Thông tin')
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
                <div class="dn-tab">
                    <div class="dn-tab-title text-center">
                        <h4>doashboard</h4>
                    </div>
                    <div id="accordion">
                    <div class="card">
                        <div class="card-header">
                          <a class="collapsed card-link" href="{{url('teacher/info')}}">Thông tin giáo viên</a>
                        </div>
                      </div>
                      <div class="card">
                        <div class="card-header">
                                <a class="card-link" href="{{url('teacher/sinh_vien')}}">Quản lý thông tin sinh viên</a> <a class="float-right" data-toggle="collapse" href="#collapseOne"><i class="ml-auto mt-2 fas fa-angle-down"></i></a>
                            </div>
                            <div id="collapseOne" class="collapse show">
                          <ul>
                            <li><a href="{{url('teacher/sinh_vien')}}">Nhập việc làm sinh viên</a></li>
                            <li><a href="{{url('teacher/sinh_vien')}}">Xác nhận thông tin việc làm sinh viên</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                </div>
                <br>
                <nav class="nav-child">
                    <div class="nav-child-title text-center">
                        <h3>Tin doanh nghiệp liên quan</h3>
                    </div>
                    <ul>
                        @foreach(tin_new() as $new)
                        <li>
                            <div class="media">
                              <img src="{{asset('local/storage/app/tintuyendung/'.$new->recruitment_img)}}">
                              <div class="media-body">
                                <h4><a href="#">{{$new->recruitment_name}}</a></h4>
                                <div class="media-body-nhatruong">
                                    <p class="text-secondary">{{$new->enterprise_name}} - {{$new->area_name}}</p>
                                    <p><small><i>{{$new->created_at}}</i></small></p>
                                </div>
                              </div>
                            </div>
                        </li>
                        @endforeach
                        
                    </ul>
                </nav>
                <nav class="nav-child">
                    <div class="nav-child-title text-center">
                        <h3>Liên hệ</h3>
                    </div>
                    <ul>
                        <li>Email: uec@gmail.com</li>
                        <li>Phone: 0978 883 234</li>
                        <li>Zalo: tlu-2</li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-8 baiviet">
                <div class="" style="background: white; margin-bottom: 15px;">
                    <div class="d-flex breadcrumb_title" style="padding-top: 5px;">
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Thông tin</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('teacher')}}">Giáo viên</a></li>
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
                                    <p><strong>Tài khoản: </strong>{{$teach->user_name}} </p>
                                    <p><strong>Mật khẩu: </strong>*********** <a href="{{url('teacher/change_password')}}"><i class="fas fa-pencil-alt"></i> Đổi mật khẩu</a></p>
                                </div>
                            </div>
                            <br>
                            <div class="">
                                <h3 class="text-uppercase text-center">Thông tin cá nhân</h3>
                                <div class="">
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Họ và tên</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->teacher_name}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Ngày sinh</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->teacher_birthday}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Khoa:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->science_name}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Email:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->teacher_email}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Số điện thoại:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->teacher_phone}}</div>
                                    </div>

                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Địa chỉ:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->teacher_address}}</div>
                                    </div>
                                    <div class="row std_col_row">
                                        <div class="col-md-3">
                                            <p><strong>Tỉnh/TP:</strong></p>
                                        </div>
                                        <div class="col-md-9">{{$teach->area_name}}</div>
                                    </div>
                                    
                                    <br>
                                    <div class="text-center std_col_row">
                                        <a href="{{url('teacher/update_info')}}" class="btn btn-outline-primary">Cập nhật</a>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 std_col">
                        <div class="" style="background: white">
                            @if(!empty($teach->teacher_img))
                                <img style="width: 100%" src="{{asset('local/storage/app/giaovien/'.$teach->teacher_img)}}" alt="">
                                @else
                                <p class="text-center p-5"><i class="fas fa-user-circle fa-10x text-blue"></i></p>
                              @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop