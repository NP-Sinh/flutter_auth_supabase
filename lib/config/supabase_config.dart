import 'package:supabase_flutter/supabase_flutter.dart';
class SupabaseConfig {
  static const String url = 'https://wmbrjzcbejpfhclpiskk.supabase.co';
  static const String anonKey = 
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndtYnJqemNiZWpwZmhjbHBpc2trIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg1ODg4NTYsImV4cCI6MjA2NDE2NDg1Nn0.3M4Btq9qWmvJOTxdJR0T5ZT8YNXENwysdBme1T42OIw';
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
  }
}
