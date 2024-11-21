import 'package:doctor_app/core/di/dependincy_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';

void main() {
  setupGetIt();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => DoctorApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
