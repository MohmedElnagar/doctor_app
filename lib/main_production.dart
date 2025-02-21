import 'package:doctor_app/core/di/dependincy_injection.dart';
import 'package:doctor_app/core/helper/constance.dart';
import 'package:doctor_app/core/helper/shareded_pref.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/extention.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await cheekLogeedInUser();
  await setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => DoctorApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}

cheekLogeedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken!.isNullOrEmpty()) {
    isLogeedInUser = false;
  } else {
    isLogeedInUser = true;
  }
}
//ahmed152@gmail.comkjhg@j2F