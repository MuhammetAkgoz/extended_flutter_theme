import 'package:flutter/material.dart';
import 'package:theme_extension/theme/app_theme.dart';
import 'package:theme_extension/theme/base_color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Extension',
      theme: AppTheme.createTheme(LightAppTheme()),
      darkTheme: AppTheme.createTheme(DarkAppTheme()),
      themeMode: ThemeMode.light,
      home: const SimpleView(),
    );
  }
}

class SimpleView extends StatefulWidget {
  const SimpleView({super.key});

  @override
  State<SimpleView> createState() => _SimpleViewState();
}

class _SimpleViewState extends State<SimpleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            children: [
              Expanded(child: Container(color: context.colorTheme.extendedColorScheme.primary2)),
              Expanded(child: Container(color: context.colorTheme.extendedColorScheme.primary3)),
              Expanded(child: Container(color: context.colorTheme.extendedColorScheme.secondary2)),
              Expanded(child: Container(color: context.colorTheme.extendedColorScheme.secondary3)),
            ],
          ),
        ),
      ),
    );
  }
}
