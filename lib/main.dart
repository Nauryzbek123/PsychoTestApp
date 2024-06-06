import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'src/features/app/my_app.dart';

void main() {
  initializeDateFormatting('ru', null).then((_) {
    runApp(MyApp());
  });
}


