import 'package:flutter/material.dart';
import 'package:flutter_auth_supabase/page/login_page.dart';
import 'package:flutter_auth_supabase/page/profile_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange, 
      builder: (context, snapshot) {
        // loading
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } 
        //kiểm tra có session hợp lệ không
        final session = snapshot.hasData ? snapshot.data!.session : null;
        if(session != null){
          return const ProfilePage();
        }
        return const LoginPage();
      }
      );
  }
}