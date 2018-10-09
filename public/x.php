@extends('layouts.layout_client')
@section('title','Tiva.vn | Mạng việc làm #1 Việt Nam')
@section('content')

<div id="lookup">
    
    <div class="container">
        <div class="row">
            @if(!Auth::guard('web')->guest())
                <div class="col-md-3">
            @elseif(!Auth::guard('employers')->guest())
                <div class="col-md-3">
            @else
                <div class="" style="display: none">
            @endif
                <div class="side-nav sticky">
                    <div class="inner">
                        @if(!Auth::guard('web')->guest())
                        <div class="blk blk-profile profile_user">
                            <div class="thumbnail" style="background-image:url('{{ Auth::guard('web')->user()->avatar?Auth::guard('web')->user()->avatar:'' }}');"></div>
                            <div class="txt">
                                <span class="profile_name">{{ Auth::guard('web')->user()->name?Auth::guard('web')->user()->name:Auth::guard('web')->user()->mobile_number }}</span>
                                <a href="/user/profile">Cập nhật thông tin</a>
                            </div>
                        </div>
                        <div class="blk blk-cta">
                            <a href="/user/info-cv" class="btn btn-primary"><i class="fas fa-user-circle"></i> CV của tôi</a>
                        </div>
                        @elseif(!Auth::guard('employers')->guest())
                        <div class="blk blk-profile profile_org">
                            <div class="thumbnail" style="background-image:url('{{ Auth::guard('employers')->user()->avatar?Auth::guard('employers')->user()->avatar:'' }}');"></div>
                            <div class="txt">
                                <span class="profile_name">{{ Auth::guard('employers')->user()->name?Auth::guard('employers')->user()->name:Auth::guard('employers')->user()->mobile_number }}</span>
                                <a href="/employer/info-company">Cập nhật thông tin</a>
                            </div>
                        </div>
                        <div class="blk blk-cta">
                            <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-primary"><i class="fas fa-user-circle"></i> Đăng việc mới</a>
                        </div>
                        <div class="modal" id="myModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Thêm công việc</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body" style="padding: 16px; padding-bottom: 0;">
                               <div class="row">
                                   <div class="col-lg-5"><label>Tên công việc</label></div>
                                   <div class="col-lg-7">
                                       <div class="form-group">
                                        <input type="text" class="form-control" name="job_name" id="emp-name">
                                      </div>
                                   </div>
                               </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" id="cr" class="btn btn-danger" style="background: #4e1058; border:none;">Tạo công việc mới</button>
                              </div>
                              <script type="text/javascript">
                                $(document).ready(function() {
                                    $("#myModal").delegate("#cr", "click", function() {
                                       $.ajax({
                                            'url' : '{{route('empcreate')}}',
                                            'type': 'POST',
                                            data: {
                                                    job_name : $('#emp-name').val(),
                                                },
                                            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
                                            success: function(data) {
                                               console.log(data.message);
                                               if(data.status == 1)
                                                 window.location="{{url('employer/job/edit')}}/"+data.result;
                                               // $("myModal").css('display', 'none');

                                            },
                                            error:function(err){
                                                console.log(err)
                                            }
                                        });
                                    });
                                });
                              </script>

                            </div>
                          </div>
                        </div>
                        @else
                        @endif

                        @if(!Auth::guard('web')->guest())
                        <div class="blk blk-shortcut">
                            <a href="/user/cvs" class="item">
                                <i class="icon fas fa-briefcase"></i>
                                <span>Công việc của tôi</span>
                            </a>
                            <a href="/user/share_link/{{Auth::guard('web')->user()->host_code}}" class="item">
                                <i class="icon fas fa-briefcase"></i>
                                <span>Share link</span>
                            </a>
                        </div>
                        @elseif(!Auth::guard('employers')->guest())
                        <div class="blk blk-shortcut">
                            <a href="{{ route('client.employer.info_company') }}" class="item">
                                <i class="icon fas fa-building"></i>
                                <span>Về {{  Auth::guard('employers')->user()->company_name }}</span>
                            </a>
                            <a href="/employer/jobs" class="item">
                                <i class="icon fas fa-calendar-alt"></i>
                                <span>Quản trị Công việc</span>
                            </a>
                            <a href="" class="item">
                                <i class="icon fas fa-address-book"></i>
                                <span>Quản lý Ứng viên</span>
                            </a>
                            <a href="/employer/share_link/{{Auth::guard('employers')->user()->host_code}}" class="item">
                                <i class="icon fas fa-address-book"></i>
                                <span>Share link</span>
                            </a>
                        </div>
                        @else
                        @endif
                    </div>
                </div>
            </div>

            @if(!Auth::guard('web')->guest())
                <div class="col-md-5">
            @elseif(!Auth::guard('employers')->guest())
                <div class="col-md-5">
            @else
            <div class="col-md-6">
            @endif
                <div class="result">
                    <h5 class="title hide">Có Công việc phù hợp</h5>
                    <ul class="jobs-listing">
                    </ul>
                </div>
            </div>

            @if(!Auth::guard('web')->guest())
                            <div class="col-md-4">
                                <div id="map-wrapper"></div>
            @elseif(!Auth::guard('employers')->guest())
            <div class="col-md-5"><div class="col-md-4">
                    <div id="map-wrapper"></div>
            @else
                        <div class="col-md-6">
                            <div id="map-wrapper" style="width: 50%"></div>
            @endif

            </div>
        </div>
    </div>
</div>
<button class="load-map" style="display: none">Tai lai</button>
<div class="modal" id="modal-job" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function($) {
        $('#job-type').selectize({
            maxItems: 5
        });
    })
</script>
@include('client.modal.put_cv') 
@endsection