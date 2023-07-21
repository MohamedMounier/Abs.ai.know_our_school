//TODO: add your model class here

import 'package:know_our_school/View/school_info.dart';

class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;


  const SchoolModel({
    required this.schoolName,required  this.schoolAddress,required  this.numberOfStudents,
    required  this.numberOfTeachers
});

  factory SchoolModel.fromJson(dynamic jsonData)=>SchoolModel(
    schoolName: jsonData["School Name"],
    schoolAddress: jsonData["School Address"],
    numberOfStudents: jsonData["Number of Students"],
    numberOfTeachers: jsonData["Number of Teachers"],
  );
}