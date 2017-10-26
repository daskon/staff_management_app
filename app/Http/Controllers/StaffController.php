<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Staff;
use App\Department;
use App\Office;
use App\WorkDays;

class StaffController extends Controller
{
   //this method will use to post new staff details into db
   public function postStaff(Request $request)
   {
      $stinfo = new Staff();
      $stinfo->DeptID = $request->input('DeptID');
      $stinfo->OfficeID = $request->input('OfficeID');
      $stinfo->FirstName = $request->input('FirstName');
      $stinfo->LastName = $request->input('LastName');
      $stinfo->DOB = $request->input('DOB');
      $stinfo->save();
      return response()->json(['stinfo'=> $stinfo], 201);
   }

   //this method will use to post staff checkin time. 
   public function postWork(Request $request)
   {
      $work = new WorkDays();
      $work->StaffID = $request->input('StaffID');
      $work->Date = date("Y-m-d"); //date function to take current date
      $work->Time = date("h:i:sa"); //date function to take current time
      $work->save();
      return response()->json(['work'=> $work], 200);
   }

   //this method will use to get all staff details
   public function getStaffs()
   {
     $staffs = Staff::all();
      $response = [
          'staffs' => $staffs
      ];

      return response()->json($response, 200);
   }

   //this method will use to get department wise staff details
   public function getDeptinfo($id)
   {
     $staffinfo = Staff::find($id);

     if($staffinfo){
         $officeinfo = Office::find($staffinfo['OfficeID']);
     }
     
     $response = [
         'staffinfo' => $staffinfo,
         'officeinfo' => $officeinfo
     ];

     return response()->json($response, 200);
   }

//    public function getEmpworkdays($id) 
//    {
//       $start = date("Y-m-d",strtotime('2017-10-1'));
//       $end = date("Y-m-d",strtotime('2017-10-1'));

//       $workdays = WorkDays::where('StaffID', '=', $id)->orWhere(function($query){
//           $query->whereBetween('Date',[date("F",strtotime('2017-10-1')), date("F",strtotime('2017-10-1'))]);
//       })->get();
   
//     //  if($workdays){

//     //     $length = count($workdays);
//     //     for($x = 0; $x < $length; $x++) {
//     //        $dateValue[$x] = $workdays['Date'];
//     //     }
        
//     //     $time=strtotime($dateValue);
//     //     $month=date("F",$time);
//     //     $year=date("Y",$time);
//     //  }
     
//      $response = [
//          'workdays' => $workdays
//      ];

//      return response()->json($response, 200);
//    }

   //this method will use to update name of staff members
   public function putStaff(Request $request, $id)
   {
      $stinfo = Staff::find($id);
      if(!$stinfo) {
          return response()->json(['message' => 'Data not found'], 404);
      }
      
      $stinfo->FirstName = $request->input('data');
      $stinfo->save();
      
      return response()->json(['stinfo' => $stinfo], 200);
   }
}