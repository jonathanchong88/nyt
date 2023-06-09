import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/config/routes/router.gr.dart';

import 'core/services/initServices/services_initializer.dart';

void main() {
  startApp();
}

void startApp() async {
  final container = ProviderContainer();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await ServicesInitializer.instance.init(widgetsBinding, container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: 'NYT',
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
