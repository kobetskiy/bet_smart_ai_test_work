import 'dart:async';
import 'dart:developer';

import 'package:bet_smart_ai/app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () => runApp(const MainApp()),
    (error, stack) => log('$error --- $stack'),
  );
}