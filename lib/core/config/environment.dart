abstract final class Environment {
  static const supabaseUrl =
      String.fromEnvironment('SUPABASE_URL', defaultValue: '');
  static const supabaseAnonKey =
      String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

  static bool get hasSupabaseConfig =>
      supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;
}
