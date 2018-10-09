@extends('frontend.master')
@section('title', 'DN | Tin tuyển dụng')
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
                      <div class="p-2 mr-auto"><h1 class="text-uppercase"><strong>Danh sách tin tuyển dụng</strong></h1></div>
                      <div class="p-2">
                            <ul class="breadcrumb" style="background: white;">
                              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                              <li class="breadcrumb-item"><a href="{{url('enterprise')}}">Doanh nghiệp</a></li>
                              <li class="breadcrumb-item active">Danh sách</li>
                            </ul>
                      </div>
                    </div>
                </div>
                <div class="baiviet-post">
                    <div class="pr_dn_ttd-title">
                        <a href="{{url('enterprise/add_ttd')}}" class="btn btn-outline-primary">Thêm mới</a>
                    </div>
                    <br>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th>Tin tuyển dụng</th>
                                    <th>Hình thức làm việc</th>
                                    <th>Trạng thái</th>
                                    <th>Hạn nộp</th>
                                    <th colspan="2">Tùy chọn</th>
                                </tr>
                            </thead>
                            <tbody {{$dem=1}}>
                                @foreach($recruitment as $recruit)
                                <tr>
                                    <td class="text-center">{{$dem++}}</td>
                                    <td><a href="{{url('enterprise/detail_ttd/'.$recruit->id)}}">{{$recruit->recruitment_name}}</a></td>
                                    <td>{{$recruit->formality_name}}</td>
                                    <td class="text-center">{{$recruit->recruitment_status}}</td>
                                    <td>{{$recruit->recruitment_deadline}}</td>
                                    <td class="text-center"><a href="{{url('enterprise/edit_ttd/'.$recruit->id)}}"><i class="fas fa-edit"></i></a></td>
                                    <td class="text-center"><a href="{{url('enterprise/delete_ttd/'.$recruit->id)}}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"><i class="fas fa-trash"></i></a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <br>
                <div class="col-md-12 pr_dn_paginate">
                    <div class="row">
                        {{ $recruitment->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop