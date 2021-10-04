import 'cliente.dart';

class ContaCorrente {
  ContaCorrente(int novaAgencia, this.conta) {
    if (novaAgencia > 0) {
      _agencia = novaAgencia;
    }
    totalContasCorrentes++;
  }

  static int totalContasCorrentes = 0;

  late Cliente titular;
  late int _agencia = 145;
  int get agencia => _agencia;
  set agencia(int novaAgencia) {
    _agencia = novaAgencia;
  }

  late int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print('O saldo não pode ser menor que o cheque especial.');
    }
  }

  bool verificaSaldo(double valor) {
    if (this._saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente.');
      print('Saldo: $_saldo');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }

  bool transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      this._saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this._saldo -= valorDoSaque;
      print('Saldo: $_saldo');
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    this._saldo += valorDoDeposito;
    return this._saldo;
  }
}
