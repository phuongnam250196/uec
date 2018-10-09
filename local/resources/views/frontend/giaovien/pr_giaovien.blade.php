    @extends('frontend.master')
@section('title', 'Giáo viên')
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
                <div class="dieuhuong-doc-search">
                    <div class="row dieuhuong-doc-search-2">
                        <div class="col-md-8 dieuhuong-doc-search-2-col dieuhuong-doc-search-2-text">
                            <i class="fas fa-search"></i>
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm">
                          </div>
                        </div>
                        <div class="col-md-2 dieuhuong-doc-search-2-col">
                            <div class="form-group">
                              <select class="form-control">
                                <option>Chọn lớp</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                              </select>
                            </div>
                        </div>
                        <div class="col-md-2 dieuhuong-doc-search-2-col">
                          <div class="form-group">
                            <input type="submit" class="form-control" value="Tìm kiếm">
                          </div>
                        </div>
                    </div>
                    <div class="row dieuhuong-doc-search-info">
                        <div class="col-6 text-left">
                            <p>Tổng số việc hiện có <span class="text-success">240</span> vị trí</p>
                        </div>
                        <div class="col-6 text-right">
                            <p><a href="#">Mới nhất</a> | <a href="#">Hạn nộp hồ sơ</a></p>
                        </div>
                    </div>
                </div>
                <div class="row nhatruong-row">
                    <div class="col-md-8 nhatruong-col-1">
                        <div class="baiviet-post">
                            @foreach($tintuc as $tin)
                            <div class="student">
                                <div class="student-title">
                                    <div class="row">
                                        <div class="col-md-9 student-title-h3">
                                            <h3><a href="#">{{$tin->news_name}}</a></h3>
                                            {{-- <p>Bravebits - Hà Nội</p> --}}
                                        </div>
                                        <div class="col-md-3 student-time text-right">
                                            <p class="time-up"><a href="#">{{date_format($tin->created_at, 'd-m-Y')}}</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row student-content">
                                    <div class="col-md-4 student-content-col">
                                        <img src="{{asset('local/storage/app/tintuc/'.$tin->news_img)}}" style="width:100%" alt="">
                                    </div>
                                    <div class="col-md-8 student-content-col">
                                        <div class="noidung-post-x">
                                            {!! strip_tags(preg_replace("/<img[^>]+\>/i", "(image) ", $tin->news_content)) !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            
                            <div class="col-md-12 student-pgn">
                                <div class="row">
                                   {{$tintuc->links()}}
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                    <div class="col-md-4 nhatruong-col-2">
                        <div class="nhatruong-col-2-info">
                            <div class="nhatruong-r-title text-center">
                                <h4>danh sách lớp</h4>
                            </div>
                            <div class="nhatruong-r-content">
                                <ul>
                                    <li><a href="#">KHMT - TI27g1</a> (<span class="badge">11</span>)</li>
                                    <li><a href="#">Toán ứng dụng - TM29g2</a> (<span class="badge">11</span>)</li>
                                    <li><a href="#">Truyền thông mạng MT - TC30e2</a> (<span class="badge">11</span>)</li>
                                    <li><a href="#">KHMT - TI21f2</a> (<span class="badge">11</span>)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>
<br>
@stop