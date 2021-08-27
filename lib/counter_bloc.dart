import 'dart:async';

import 'package:flutter/material.dart';

class CounterBloc {
  int _value = 0;
  StreamController<int> _valueController = StreamController<int>();

  void increment() {
    _value++;
    _valueController.sink.add(_value);
  }

  void decrement() {
    _value--;
    _valueController.sink.add(_value);
  }

  Stream<int> getStream() {
    return _valueController.stream;
  }

  void dispose() {
    _valueController.close();
  }
}
