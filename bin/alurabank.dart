import '../lib/contacorrente.dart';
import '../lib/cliente.dart';

void main() {
  ContaCorrente conta1 = ContaCorrente(123, 12345678);
  ContaCorrente conta2 = ContaCorrente(123, 12345679);
  ContaCorrente conta3 = ContaCorrente(123, 12345675);
  // ContaCorrente conta2 = ContaCorrente();

  // conta1.agencia = 123456;

  print(ContaCorrente.totalContasCorrentes);
}
