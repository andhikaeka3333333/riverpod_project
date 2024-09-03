import 'package:flutter_riverpod/flutter_riverpod.dart';

final number1Provider = StateProvider<double>((ref) => 0);
final number2Provider = StateProvider<double>((ref) => 0);
final operationProvider = StateProvider<String>((ref) => 'Penjumlahan');
final resultProvider = StateProvider<double>((ref) {
  final number1 = ref.watch(number1Provider);
  final number2 = ref.watch(number2Provider);
  final selectedOperation = ref.watch(operationProvider);

  double result = 0;
  switch (selectedOperation) {
    case 'Penjumlahan':
      result = number1 + number2;
      break;
    case 'Pengurangan':
      result = number1 - number2;
      break;
    case 'Perkalian':
      result = number1 * number2;
      break;
    case 'Pembagian':
      result = number1 / number2;
      break;
    case 'Modulus':
      result = number1 % number2;
      break;
  }
  return result;
});
