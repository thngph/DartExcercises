import 'msg.dart';
import 'cal.dart';
import 'trigo.dart' as trigo;

void main() {
  funcStart();
  double x = 2.0;

  print('sin($x) = ${trigo.m_sin(x)}');
  print('cos($x) = ${trigo.m_cos(x)}');
  print('tan($x) = ${trigo.m_tan(x)}');

  print('square($x) = ${m_square(x)}');
  print('log($x) = ${m_log(x)}');

  funcEnd();
}
