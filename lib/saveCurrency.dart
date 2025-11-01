import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveCurrency(String code, String symbol) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('currency_code', code);
  await prefs.setString('currency_symbol', symbol);
}
