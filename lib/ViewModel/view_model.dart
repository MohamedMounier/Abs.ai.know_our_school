//TODO: add your view model class here

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolViewModel extends ChangeNotifier{
  bool loading = false;
  SchoolModel? schoolModel;


  Future<void> getSchoolData(BuildContext context)async{
   loading=true;
   notifyListeners();
   try{
     String jsonString=await rootBundle.loadString("assets/json/SchoolDataInfo.json");
     List<dynamic>jsonList=jsonDecode(jsonString);
     final List<SchoolModel> schoolsData= List<SchoolModel>.from(jsonList.map((e) => SchoolModel.fromJson(e)).toList());
      schoolModel=schoolsData.first;
     loading=false;
     notifyListeners();
   }catch (error){
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
     loading=false;
     notifyListeners();
   }

  }



}