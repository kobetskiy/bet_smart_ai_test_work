import 'package:bet_smart_ai/core/routing/router.dart';
import 'package:bet_smart_ai/core/ui/theme.dart';
import 'package:bet_smart_ai/features/lines/services/tab_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TabService>(create: (context) => TabService()),
      ],
      child: MaterialApp.router(
        theme: theme,
        title: "Bet Smart AI",
        debugShowCheckedModeBanner: false,
        routerConfig: _router.config(),
      ),
    );
  }
}
