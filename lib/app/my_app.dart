import 'package:baseproject/globals/core/path/file_path.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(color: Colors.black, fontSize: 20),
          titleMedium: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ),
    );
  }
}