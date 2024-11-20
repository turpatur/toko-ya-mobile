import 'package:flutter/material.dart';
import 'package:toko_ya/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Toko-ya!',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
          ).copyWith(
            secondary: Colors.green[400],
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor:
                Colors.green,
            foregroundColor: Colors.white, 
          ),
        ),
        home: LoginPage(),
      ),
    );
  }
}
