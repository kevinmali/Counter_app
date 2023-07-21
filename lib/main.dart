import 'package:counterapp/Providers/counter_providers.dart';
import 'package:counterapp/Providers/theme_provider.dart';
import 'package:counterapp/screens/countpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<counterprovide>(create: (ctx) => counterprovide()),
        ListenableProvider<themeprovider>(create: (ctx) => themeprovider()),
      ],
      builder: (ctx, _) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode:
            (Provider.of<themeprovider>(ctx, listen: true).theme.isdark ==
                    false)
                ? ThemeMode.light
                : ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: Counterpage(),
      ),
    ),
  );
}
