<?php

namespace App\Http\Controllers\TrangChu;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\danhmuckhac\AreaModel;
use App\Models\EnterprisesModel;
use App\Models\StudentModel;
use App\Models\UserModel;
use App\Models\TrainModel;
use App\Models\SpecializeModel;
use App\Models\ScienceModel;
use App\Models\CourseModel;
use App\Models\TeacherModel;
use App\Models\baiviet\NewsModel;

use App\Http\Requests\GVFrontend\EditTaiKhoanSV;
use App\Http\Requests\doimk\EnterRequest;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use DB;
use Response;
use Auth;
class TeacherController extends Controller
{
    public function getTeacherPri() {
    	$tintuc = NewsModel::orderBy('id', 'desc')->paginate(5);
    	return view('frontend.giaovien.pr_giaovien', compact('tintuc'));
    }

    public function getTeacherInfo() {
        $teach_id = TeacherModel::join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())->first();
        $teach = TeacherModel::join('uec_area', 'uec_area.id', '=', 'uec_teacher.area_id')
                                ->join('uec_science', 'uec_science.id', '=', 'uec_teacher.science_id')
                                ->join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())
                                ->first();
                                // dd($teach->teacher_img, Auth::id(), $teach_id);
        return view('frontend.giaovien.pr_giaovien_info', compact('teach'));
    }
    public function getTeacherChangepassword() {
        $teach_id = TeacherModel::join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())->first();
        return view('frontend.giaovien.pr_giaovien_doimatkhau', compact('teach_id'));
    }
    public function postTeacherChangepassword(EnterRequest $request) {
        $mk = UserModel::find(Auth::id());
        $currentPass = $request->password;
        $newPass = $request->new_pass;
        if(Hash::check($currentPass, $mk->password)) {
            $mk->password = Hash::make($request->new_pass);
            $mk->save();
            return back()->with('success', 'Đổi mật khẩu thành công');
        } else {
            return back()->with('err', 'Mật khẩu cũ không chính xác');
        }
    }


    public function getTeacherInfoEdit() {
        $area = AreaModel::all();
        $science = ScienceModel::all();
        $teach = TeacherModel::join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())
                                ->first();
                                // dd($teach->teacher_id);
        return view('frontend.giaovien.pr_giaovien_info_edit', compact('area', 'science', 'teach'));
    }
    public function postTeacherInfoEdit(Request $request) {
        $teach = TeacherModel::join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())
                                ->first();
    	if(!Input::get('save')) {
            $data = TeacherModel::findOrFail ($teach->teacher_id);
            $data->update($request->all());
            return back();
        } else  {
            $data = TeacherModel::find($teach->teacher_id);
            if(empty($request->img)) {

            } else {
                $filename = $request->img->getClientOriginalName();
                $data->teacher_img = $filename;
                $data->save();
                $request->img->storeAs('giaovien', $filename);
            }
            
            return back();
        }
    }

    public function getTaikhoanSV() {
    	$area = AreaModel::all();
        $science = ScienceModel::all();
        $course = CourseModel::all();
        $specialize = SpecializeModel::all();
    	return view('frontend.giaovien.pr_giaovien_hocsinh', compact('area', 'science', 'course', 'specialize'));
    }
    public function postTaiKhoanSV(EditTaiKhoanSV $request) {
        $stds = StudentModel::select('student_code')->get();
        $teach = TeacherModel::join('uec_user', 'uec_user.teacher_id', '=', 'uec_teacher.id')
                                ->where('uec_user.id', Auth::id())
                                ->first();
        $status = 0;
        foreach($stds as $std) {
            if($std->student_code == $request->student_code) {
                $status = 1;
            } else {
                $status = 0;
            }
        }
        if($status == 1) {
            return back()->with('message', 'Sinh viên đã tồn tại');
        } else {
            $data = new StudentModel;
            $data->student_code = $request->student_code;
            $data->student_name = $request->student_name;
            $data->student_slug = str_slug($request->student_name);
            $data->student_birthday = $request->student_birthday;
            $data->student_gender = $request->student_gender;
            $data->student_phone = $request->student_phone;
            $data->student_email = $request->student_email;
            $data->specialize_id = $request->specialize_id;
            $data->course_id = $request->course_id;
            $data->science_id = $request->science_id;
            $data->area_id = $request->area_id;
            $data->student_class = $request->student_class;
            $data->student_head_teacher = $teach->teacher_name;
            $data->student_address = $request->student_address;
            $data->student_employment_name = $request->student_employment_name;
            $data->student_company_name = $request->student_company_name;
            $data->student_timeserving = $request->student_timeserving;
            $data->student_company_address = $request->student_company_address;
            $data->teacher_add_student = 1;
            if(!empty($request->student_employment_name)) {
                $data->student_employment_status = 1;
            } else {
                $data->student_employment_status = 0;
            }
            $data->save();
            // dd($data);
            return back()->with('message', 'Thêm thành công');
        }
        // dd($status);
        
    }
}
