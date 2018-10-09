<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\sinhvien\AddUser1Requeset;
use App\Http\Requests\sinhvien\AddUserRequest;
use App\Http\Controllers\Controller;
use App\Models\UserModel;
use App\Models\StudentModel;
use App\Models\danhmuckhac\AreaModel;
use App\Models\ScienceModel;
use App\Models\CourseModel;
use App\Models\SpecializeModel;
use Excel;
use DB;
use Input;
use Auth;
use session;
use Validator;

class StudentController extends Controller
{
	//Thông tin sinh viên
    public function getThongtin() {
    	$data['std'] = StudentModel::paginate(20);
    	return view('backend.sinhvien.adm_sinhvien', $data);
    }
    public function getThemmot() {
    	$area = AreaModel::all();
        $science = ScienceModel::all();
        $course = CourseModel::all();
        $specialize = SpecializeModel::all();
    	return view('backend.sinhvien.adm_sinhvien_add', compact('area', 'science', 'course', 'specialize'));
    }
    public function postThemmot(AddUser1Requeset $request) {
    	$filename = $request->std_img->getClientOriginalName();
    	$std = new StudentModel;
    	$std->student_code = $request->std_code;
    	$std->student_name = $request->std_name;
    	$std->student_slug = str_slug($request->std_name);
    	$std->student_img = $filename;
    	$std->student_birthday = $request->std_birthday;
    	$std->student_gender = $request->std_gender;
    	$std->student_phone = $request->std_phone;
    	$std->student_email = $request->std_email;
    	$std->specialize_id = $request->std_specialize;
    	$std->course_id = $request->std_course;
    	$std->science_id = $request->std_science;
    	$std->student_class = $request->std_class;
    	$std->student_head_teacher = $request->std_head_teacher;
    	$std->student_address = $request->std_address;
    	$std->student_employment_name = $request->std_employ_name;
        $std->student_company_name = $request->std_company_name;
        $std->student_company_position = $request->std_company_position;
    	$std->student_company_address = $request->std_company_address;
    	$std->student_timeserving = $request->std_timeserving;
    	$std->student_tick = 1;
        $std->input_source = 'Admin';
		$std->area_id = $request->std_area;
		$std->save();
		$request->std_img->storeAs('sinhvien', $filename);

    	return redirect()->intended('admin/sinhvien/thongtin');
    }
    public function getEditThemmot($id) {
        $area = AreaModel::all();
        $science = ScienceModel::all();
        $course = CourseModel::all();
        $specialize = SpecializeModel::all();
        $student = StudentModel::find($id);
        return view('backend.sinhvien.adm_sinhvien_edit', compact('area', 'science', 'course', 'specialize', 'student'));
    }
    public function postEditThemmot(Request $request, $id) {
        $rules = [
            'img' => 'required'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors());
        } else {
            $std = StudentModel::find($id);
            // dd($std);
            $std->student_code = $request->std_code;
            $std->student_name = $request->std_name;
            $std->student_slug = str_slug($request->std_name);
            // dd($request->img);
            if(!empty($request->img)) {
                $filename = $request->img->getClientOriginalName();
                $std->student_img = $filename;
                $request->img->storeAs('sinhvien', $filename);
            }
            $std->student_birthday = $request->std_birthday;
            $std->student_gender = $request->std_gender;
            $std->student_phone = $request->std_phone;
            $std->student_email = $request->std_email;
            $std->specialize_id = $request->std_specialize;
            $std->course_id = $request->std_course;
            $std->science_id = $request->std_science;
            $std->student_class = $request->std_class;
            $std->student_head_teacher = $request->std_head_teacher;
            $std->student_address = $request->std_address;
            $std->student_employment_name = $request->std_employ_name;
            $std->student_company_name = $request->std_company_name;
            $std->student_company_position = $request->std_company_position;
            $std->student_company_address = $request->std_company_address;
            $std->student_timeserving = $request->std_timeserving;
            $std->student_tick = 1;
            
            $std->area_id = $request->std_area;
            $std->save();
        }   
        return redirect()->intended('admin/sinhvien/thongtin');
    }

    public function getThemnhieu() {
    	$data['area'] = AreaModel::all();
    	return view('backend.sinhvien.adm_sinhvien_add_file', $data);
    }
    public function postThemnhieu(Request $request) {
        $message = '';
        $a = 0;
        if($request->hasFile('std_img')){
           
            $path = $request->file('std_img')->getRealPath();
            $data = Excel::load($path)->get();

            $arr2 = [];
            $arr = [];
            if(!empty($data) && $data->count() > 0){
                foreach ($data as $value) {
                    $students = StudentModel::where('student_code', $value['student_code'])->first();
                    // dd($students, $arr);
                    if(!empty($students)) {

                        $arr2[] = [
                            'student_code' => $value->student_code,
                            'student_class' => $value->student_class,
                            'student_name' => $value->student_name,
                            'student_so_bang' => $value->student_so_bang,
                        ];
                        // dd($arr2);
                    } else {
                        $arr[] = [
                            'student_code' => $value->student_code,
                            'student_name' => $value->student_name,
                            'student_birthday' => $value->student_birthday,
                            'student_home_town' => $value->student_home_town,
                            'student_gender' => $value->student_gender,
                            'student_class_only' => $value->student_class_only,
                            'student_class' => $value->student_class,
                            'student_phone' => $value->student_phone,
                            'specialize_id' => $value->specialize_id,
                            'science_id' => $value->science_id,
                            'student_nation' => $value->student_nation,
                            'student_country' => $value->student_country,
                            'student_distribution' => $value->student_distribution,
                            'student_number_code' => $value->student_number_code,
                            'student_so_bang' => $value->student_so_bang,
                        ];
                    }
                }
                // dd($arr, $arr2, count($arr));
                if(!empty($arr)){
                    DB::table('uec_student')->insert($arr);
                    $them = 'Them moi thanh cong';
                    $message = 'Them moi thanh cong';
                } else {
                    $message = 'File moi du lieu bi trung het';
                    $a = 1;
                }
                if(!empty($arr2)) {
                    foreach ($arr2 as $key => $value) {
                        $value = (Object)$value;
                        if(!empty($value->student_so_bang)) {
                            // dd('co');
                            DB::table('uec_student')->where('student_code',$value->student_code)->update(['student_status' => '1']);
                        }
                        
                    }
                    $message = "Cap nhat du lieu moi thanh cong";
                }
                // dd($message);
                return redirect('admin/sinhvien/thongtin')->with('them',$message);
            }
        }
        // dd('Request data does not have any files to import.'); 
        // return back()->with('success','Insert Record successfully.');
    }

    public function getDeleteThongtin($id) {
        StudentModel::destroy($id);
        return back()->with("success", "Xóa hình thức thành công");
    }

    // Tài khoản sinh viên
    public function getTaikhoan() {
    	$area = AreaModel::all();
        $list_user = DB::table('uec_user')
        ->join('uec_student', 'uec_user.student_id', '=', 'uec_student.id')
        ->orderBy('student_id', 'desc')
        ->paginate(15);
        $m = UserModel::whereNotNull('student_id')->orderBy('id', 'desc')->paginate(15);
    	return view('backend.sinhvien.adm_sinhvien_taikhoan', compact('area', 'list_user',  'm'));
    }
    public function postTaikhoan(AddUserRequest $request) {
        // $userall = UserModel::where('student_id', Auth::id())->get();
        $a = UserModel::where('user_name', $request->user_name)->first();
        $b = StudentModel::where('student_code', $request->user_name)->first();
        // dd($b);
    	$user = new UserModel;
        if(!empty($b->student_code)) {
            if(!empty($a->user_name)) {
                return back()->with('error', 'Tài khoản đã tồn tại');
            } else {
                $user->user_name=$request->user_name;
                $user->password=bcrypt($request->password);
                $user->student_id=$b->id;
                $user->user_level = 5;
                $user->save();
                return back()->with('success', 'Tạo tài khoản thành công');
            }
            
        } else {
            return back()->with('error', 'Mã sinh viên không tồn tại trong hệ thống');
        }
    }

}
