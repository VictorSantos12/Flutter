// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemController on ItemControllerBase, Store {
  final _$markedAtom = Atom(name: 'ItemControllerBase.marked');

  @override
  bool get marked {
    _$markedAtom.reportRead();
    return super.marked;
  }

  @override
  set marked(bool value) {
    _$markedAtom.reportWrite(value, super.marked, () {
      super.marked = value;
    });
  }

  @override
  String toString() {
    return '''
marked: ${marked}
    ''';
  }
}
