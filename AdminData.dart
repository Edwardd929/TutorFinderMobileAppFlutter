import 'package:edumateapp/AdminScreen/AdminHome.dart';

import 'package:flutter/material.dart';
import 'package:edumateapp/Models/Category.dart';

//all the value of category is created here - no need to create the same category multiple time

const AdminFunctionCategories = [
  Category(
    id: 'ts1',
    title: 'Report',
    color: Colors.white,
    icon: Icons.assessment, 
    nextPage: AdminHome(),
  ),
  Category(
    id: 'ts2',
    title: 'Tutor Registration Verification',
    color: Colors.white,
    icon: Icons.verified, 
    nextPage: AdminHome(),
  ),
  Category(
    id: 'ts3',
    title: 'Tutor Disqualification',
    color: Colors.white,
    icon: Icons.cancel,
    nextPage: AdminHome(),
  ),
];