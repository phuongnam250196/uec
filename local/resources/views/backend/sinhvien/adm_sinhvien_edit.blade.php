@extends('backend.master')
@section('title', 'Sửa thông tin sinh viên')
@section('main')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý Sinh Viên</h1>
        <ol class="breadcrumb">
            <li><a href="{{asset('admin/home')}}"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li>Sinh viên</li>
            <li class="active">Sửa</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <section class="col-md-12">
                <!-- Tạo 1 tài khoản sinh viên -->
                <div class="box box-info">
                    <div class="box-header">
                        <i class="fa fa-plus-circle text-primary"></i>
                        <h3 class="box-title"><strong>Sửa thông tin sinh viên</strong></h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <form method="post" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="box-header with-border">
                              <h3 class="box-title">Thông tin cá nhân</h3>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Mã sinh viên</label>
                                        <input type="text" class="form-control" name="std_code" value="{{$student->student_code}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" class="form-control" name="std_name" value="{{$student->student_name}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Ngày sinh</label>
                                        <input type="date" class="form-control" name="std_birthday" value="{{$student->student_birthday}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Giới tính</label>
                                        <select class="form-control" name="std_gender">
                                            @if($student->student_gender == 1)
                                                <option value="1">Nam</option>
                                            @else
                                                <option value="2">Nữ</option>
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <input type="number" class="form-control" name="std_phone" value="{{$student->student_phone}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" name="std_email" value="{{$student->student_email}}">
                                    </div>
                                </div>
                            </div>
                            <div class="box-header with-border">
                              <h3 class="box-title">Thông tin đi học</h3>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group col-md-8">
                                        <label>Ảnh đại diện </label>
                                        <input id="img" type="file" name="img" class="form-control" style="display: none" onchange="changeImg(this)" >
                                        @if(!empty($student->student_img))
                                            <img id="avatar" class="thumbnail" src="{{url('local/storage/app/sinhvien/'.$student->student_img)}}" width="100%">
                                        @else
                                            <img id="avatar" required="" class="thumbnail" src="{{url('public/upload/images/new_seo-10-512.png')}}" width="100%">
                                        @endif
                                        @if($errors->has('img'))
                                          <p class="help text-danger">{{ $errors->first('img') }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="row">
                                        <div class="col-md-5 form-group">
                                            <label>Khoa</label>
                                            <select class="form-control" name="std_science">
                                                @foreach($science as $sci)
                                                    <option value="{{$sci->id}}" @if($sci->id == $student->science_id) selected @endif>{{$sci->science_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-7 form-group">
                                            <label>Chuyên ngành</label>
                                            <select class="form-control" name="std_specialize">
                                                @foreach($specialize as $spe)
                                                    <option value="{{$spe->id}}" @if($spe->id == $student->specialize_id) selected @endif>{{$spe->specialize_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="row">
                                        <div class="col-md-6 form-group">
                                            <label>Khóa học</label>
                                            <select class="form-control" name="std_course">
                                                @foreach($course as $cour)
                                                    <option value="{{$cour->id}}" @if($cour->id == $student->course_id) selected @endif>{{$cour->course_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label>Lớp</label>
                                            <input type="text" class="form-control" name="std_class" value="{{$student->student_class}}">
                                        </div>     
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Giáo viên chủ nhiệm</label>
                                        <input type="text" class="form-control" name="std_head_teacher" value="{{$student->student_head_teacher}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Tỉnh/Thành phố</label>
                                        <select class="form-control" id="sel1" name="std_area">
                                            @foreach($area as $a)
                                            <option value="{{$a->id}}">{{$a->area_name}}</option>
                                           @endforeach
                                        </select>
                                    </div>
                                </div>    
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Địa chỉ</label>
                                        <input type="text" class="form-control" name="std_address" value="{{$student->student_address}}">
                                    </div>
                                </div>
                                
                            </div>
                            <div class="box-header with-border">
                                <h3 class="box-title">Thông tin việc làm</h3>
                            </div>
                            <div class="row">
                                
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Tên việc làm</label>
                                        <input type="text" class="form-control" name="std_employ_name" value="{{$student->student_employment_name}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Chức vụ</label>
                                        <input type="text" class="form-control" name="std_company_position" value="{{$student->student_company_position}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <label>Tên công ty</label>
                                        <input type="text" class="form-control" name="std_company_name" value="{{$student->student_company_name}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6"> 
                                    <div class="form-group">
                                        <label>Thời gian làm việc</label>
                                        <input type="text" class="form-control" name="std_timeserving" value="{{$student->student_timeserving}}">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6"> 
                                    <div class="form-group">
                                        <label>Địa chỉ công ty</label>
                                        <input type="text" class="form-control" name="std_company_address" value="{{$student->student_company_address}}">
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="box-footer clearfix">
                            <a href="{{asset('admin/sinhvien/thongtin')}}" class="pull-right btn btn-default" id="sendEmail">Back <i class="fa fa-arrow-circle-left"></i></a>
                            <button type="submit" class="pull-right btn btn-primary" style="margin-right: 10px">Cập nhật</button>
                        </div>
                        {{csrf_field()}}
                    </form>
                </div>
                
                <!-- End tạo 1 tài khoản -->
            </section>
            <!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            
            <!-- right col -->
        </div>
        <!-- /.row (main row) -->
    </section>
    <!-- /.content -->
</div>
@stop