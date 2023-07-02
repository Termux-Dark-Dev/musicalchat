// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login-ctrlr.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginCtrlr on _LoginCtrlr, Store {
  late final _$isbtntapAtom =
      Atom(name: '_LoginCtrlr.isbtntap', context: context);

  @override
  bool get isbtntap {
    _$isbtntapAtom.reportRead();
    return super.isbtntap;
  }

  @override
  set isbtntap(bool value) {
    _$isbtntapAtom.reportWrite(value, super.isbtntap, () {
      super.isbtntap = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginCtrlr.login', context: context);

  @override
  Future<Map<bool, String>> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  @override
  String toString() {
    return '''
isbtntap: ${isbtntap}
    ''';
  }
}
