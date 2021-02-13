import 'package:environmenst_in_flutter_with_codemagic/app_widget.dart';
import 'package:environmenst_in_flutter_with_codemagic/config_reader.dart';
import 'package:environmenst_in_flutter_with_codemagic/enviorments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Enviorment.dev:
      primaryColor = Colors.blue;
      break;

    case Enviorment.prod:
      primaryColor = Colors.red;
      break;
    default:
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}
