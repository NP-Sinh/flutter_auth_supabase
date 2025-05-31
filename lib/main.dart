import 'package:flutter/material.dart';
import 'package:flutter_auth_supabase/auth/auth_gate.dart';
import 'package:flutter_auth_supabase/config/supabase_config.dart';

void main() async {
  await SupabaseConfig.initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
