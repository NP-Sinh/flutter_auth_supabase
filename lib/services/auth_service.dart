import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient supabase = Supabase.instance.client;

  // Đăng nhập với email và mật khẩu
  Future<AuthResponse?> signInWithEmailPassword(String email, String password) async {
    return await supabase.auth.signInWithPassword(email: email, password: password);
  }

  // Đăng ký với email và mật khẩu
  Future<AuthResponse> signUpWithEmailPassword(String email, String password) async {
    return await supabase.auth.signUp(email: email, password: password);
  }

  // Đăng xuất
  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
  // Lấy email người dùng
  Future<String?> getCurrentUserEmail() async {
    final session = supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}
