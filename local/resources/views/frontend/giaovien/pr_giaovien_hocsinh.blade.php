@extends('frontend.master')
@section('title', 'Thông tin doanh nghiệp')
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
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Thêm sinh viên</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('teacher')}}">Giáo viên</a></li>
                              <li class="breadcrumb-item active">Cập nhật sinh viên</li>
                            </ul>
                      </div>
                    </div>
                </div>
                

                <div class="row std_row">
                    <div class="col-md-8 std_col" >
                        <div class="std_col_1" style="background: white;">
                            <div class="change_password">
                                <form method="POST">
                                   @if(session('success'))
                                        <div class="alert alert-success">{{session('success')}}</div>
                                    @endif
                                    <div class="form-group">
                                      <label>Nhập lớp</label>
                                      <input type="text" class="form-control" name="student_class">
                                      @if($errors->has('student_class'))
                                        <p class="help text-danger">{{ $errors->first('student_class') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Mã sinh viên</label>
                                      <input type="text" class="form-control" name="student_code">
                                      @if($errors->has('student_code'))
                                        <p class="help text-danger">{{ $errors->first('student_code') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Họ và tên</label>
                                      <input type="text" class="form-control" name="student_name" >
                                      @if($errors->has('student_name'))
                                        <p class="help text-danger">{{ $errors->first('student_name') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Ngày sinh</label>
                                      <input type="date" class="form-control" name="student_birthday" >
                                      @if($errors->has('student_birthday'))
                                        <p class="help text-danger">{{ $errors->first('student_birthday') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Giới tính</label>
                                      <select class="custom-select form-control" name="student_gender">
                                          <option selected value="">Chọn giới tính</option>
                                          <option  value="1">Nam</option>
                                          <option  value="2">Nữ</option>
                                        </select>
                                      @if($errors->has('student_gender'))
                                        <p class="help text-danger">{{ $errors->first('student_gender') }}</p>
                                      @endif
                                    </div>
                                    <div class="row">
                                      <div class="col-md-5 form-group">
                                        <label>Khóa</label>
                                        <select class="custom-select form-control" name="course_id">
                                          <option selected value="">Chọn khóa</option>
                                          @foreach($course as $cours)
                                          <option value="{{$cours->id}}" >{{{$cours->course_name}}}</option>
                                          @endforeach
                                        </select>
                                        @if($errors->has('course_id'))
                                          <p class="help text-danger">{{ $errors->first('course_id') }}</p>
                                        @endif
                                      </div>
                                      <div class="col-md-7 form-group">
                                        <label>Khoa</label>
                                          <select class="custom-select form-control" name="science_id">
                                            <option selected value="">Chọn khoa</option>
                                            @foreach($science as $sci)
                                              <option value="{{$sci->id}}">{{$sci->science_name}}</option>
                                            @endforeach
                                          </select>
                                          @if($errors->has('science_id'))
                                            <p class="help text-danger">{{ $errors->first('science_id') }}</p>
                                          @endif
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label>Chuyên ngành</label>
                                      <select class="custom-select form-control" name="specialize_id">
                                        <option selected value="">Chọn chuyên ngành</option>
                                        @foreach($specialize as $spe)
                                          <option value="{{$spe->id}}" >{{{$spe->specialize_name}}}</option>
                                        @endforeach
                                      </select>
                                      @if($errors->has('specialize_id'))
                                        <p class="help text-danger">{{ $errors->first('specialize_id') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Tỉnh/Thành phố</label>
                                      <select class="custom-select form-control" name="area_id" >
                                        <option selected value="">Chọn Tình/Thành phố</option>
                                        @foreach($area as $are)
                                          <option value="{{$are->id}}">{{$are->area_name}}</option>
                                        @endforeach
                                      </select>
                                      @if($errors->has('area_id'))
                                        <p class="help text-danger">{{ $errors->first('area_id') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                      <label>Địa chỉ hiện tại</label>
                                      <input type="text" class="form-control" name="student_address" >
                                      @if($errors->has('student_address'))
                                        <p class="help text-danger">{{ $errors->first('student_address') }}</p>
                                      @endif
                                    </div>
                                    <div class="form-group">
                                        <label>Tên việc làm</label>
                                        <input type="text" class="form-control" name="student_employment_name" >
                                      </div>
                                      <div class="form-group">
                                        <label>Tên công ty</label>
                                        <input type="text" class="form-control" name="student_company_name" >
                                      </div>
                                      <div class="form-group">
                                        <label>Thời gian làm việc</label>
                                        <input type="text" class="form-control" name="student_timeserving" >
                                      </div>
                                      <div class="form-group">
                                        <label>Địa chỉ công ty</label>
                                        <input type="text" class="form-control" name="student_company_address" >
                                      </div>
                                      <button type="submit" class="btn btn-primary">Cập nhật</button>
                                      <a href="{{url('/teacher')}}" class="btn btn-default">Hủy cập nhật</a>
                                      {{csrf_field()}}
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 std_col">
                        <div class="" style="background: white">
                            {{-- <img onclick="a()"  style="width: 100%" src="{{asset('local/storage/app/public/'.$data->enterprise_logo)}}"> --}}
                            {{-- <form class="up_img" enctype="multipart/form-data" method="POST">
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
                            </script> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop