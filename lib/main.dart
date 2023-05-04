import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/providers/walkthrough_provider.dart';
import 'package:uber/router.dart';
import 'package:uber/styles/theme_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => WalkthroughProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        theme: ThemeScheme.light(),
        initialRoute: WalkthroughRoute,
      ),
    ),
  );
}
