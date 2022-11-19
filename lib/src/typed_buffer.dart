// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection' show ListMixin;
import 'dart:typed_data';

import 'typed_buffer_mixin.dart';

abstract class _IntBuffer<L extends List<int>>
    with ListMixin<int>, TypedDataBufferMixin<int, L> {
  @override
  int get defaultValue => 0;
}

abstract class _FloatBuffer<L extends List<double>>
    with ListMixin<double>, TypedDataBufferMixin<double, L> {
  @override
  double get defaultValue => 0.0;
}

class Uint8Buffer extends _IntBuffer<Uint8List> {
  @override
  Uint8List sourceBuffer;

  Uint8Buffer([int initialLength = 0])
      : sourceBuffer = Uint8List(
          initialLength,
        );

  @override
  Uint8List get sourceTypedBuffer => sourceBuffer;

  @override
  Uint8List createBuffer(int size) => Uint8List(size);
}

class Int8Buffer extends _IntBuffer<Int8List> {
  @override
  Int8List sourceBuffer;

  Int8Buffer([int initialLength = 0])
      : sourceBuffer = Int8List(
    initialLength,
  );

  @override
  Int8List get sourceTypedBuffer => sourceBuffer;

  @override
  Int8List createBuffer(int size) => Int8List(size);
}

class Uint8ClampedBuffer extends _IntBuffer<Uint8ClampedList> {
  @override
  Uint8ClampedList sourceBuffer;

  Uint8ClampedBuffer([int initialLength = 0])
      : sourceBuffer = Uint8ClampedList(
    initialLength,
  );

  @override
  Uint8ClampedList get sourceTypedBuffer => sourceBuffer;

  @override
  Uint8ClampedList createBuffer(int size) => Uint8ClampedList(size);
}

class Uint16Buffer extends _IntBuffer<Uint16List> {
  @override
  Uint16List sourceBuffer;

  Uint16Buffer([int initialLength = 0])
      : sourceBuffer = Uint16List(
    initialLength,
  );

  @override
  Uint16List get sourceTypedBuffer => sourceBuffer;

  @override
  Uint16List createBuffer(int size) => Uint16List(size);
}

class Int16Buffer extends _IntBuffer<Int16List> {
  @override
  Int16List sourceBuffer;

  Int16Buffer([int initialLength = 0])
      : sourceBuffer = Int16List(
    initialLength,
  );

  @override
  Int16List get sourceTypedBuffer => sourceBuffer;

  @override
  Int16List createBuffer(int size) => Int16List(size);
}

class Uint32Buffer extends _IntBuffer<Uint32List> {
  @override
  Uint32List sourceBuffer;

  Uint32Buffer([int initialLength = 0])
      : sourceBuffer = Uint32List(
    initialLength,
  );

  @override
  Uint32List get sourceTypedBuffer => sourceBuffer;

  @override
  Uint32List createBuffer(int size) => Uint32List(size);
}

class Int32Buffer extends _IntBuffer<Int32List> {
  @override
  Int32List sourceBuffer;

  Int32Buffer([int initialLength = 0])
      : sourceBuffer = Int32List(
    initialLength,
  );

  @override
  Int32List get sourceTypedBuffer => sourceBuffer;

  @override
  Int32List createBuffer(int size) => Int32List(size);
}

class Uint64Buffer extends _IntBuffer<Uint64List> {
  @override
  Uint64List sourceBuffer;

  Uint64Buffer([int initialLength = 0])
      : sourceBuffer = Uint64List(
    initialLength,
  );

  @override
  Uint64List get sourceTypedBuffer => sourceBuffer;

  @override
  Uint64List createBuffer(int size) => Uint64List(size);
}

class Int64Buffer extends _IntBuffer<Int64List> {
  @override
  Int64List sourceBuffer;

  Int64Buffer([int initialLength = 0])
      : sourceBuffer = Int64List(
    initialLength,
  );

  @override
  Int64List get sourceTypedBuffer => sourceBuffer;

  @override
  Int64List createBuffer(int size) => Int64List(size);
}

class Float32Buffer extends _FloatBuffer<Float32List> {
  @override
  Float32List sourceBuffer;

  Float32Buffer([int initialLength = 0])
      : sourceBuffer = Float32List(
    initialLength,
  );

  @override
  Float32List get sourceTypedBuffer => sourceBuffer;

  @override
  Float32List createBuffer(int size) => Float32List(size);
}

class Float64Buffer extends _FloatBuffer<Float64List> {
  @override
  Float64List sourceBuffer;

  Float64Buffer([int initialLength = 0])
      : sourceBuffer = Float64List(
    initialLength,
  );

  @override
  Float64List get sourceTypedBuffer => sourceBuffer;

  @override
  Float64List createBuffer(int size) => Float64List(size);
}

class Int32x4Buffer with ListMixin<Int32x4>, TypedDataBufferMixin<Int32x4, Int32x4List> {
  static final Int32x4 _zero = Int32x4(0, 0, 0, 0);
  @override
  Int32x4List sourceBuffer;

  Int32x4Buffer([int initialLength = 0])
      : sourceBuffer = Int32x4List(
    initialLength,
  );

  @override
  Int32x4List get sourceTypedBuffer => sourceBuffer;

  @override
  Int32x4 get defaultValue => _zero;

  @override
  Int32x4List createBuffer(int size) => Int32x4List(size);
}

class Float32x4Buffer with ListMixin<Float32x4>, TypedDataBufferMixin<Float32x4, Float32x4List> {
  @override
  Float32x4List sourceBuffer;

  Float32x4Buffer([int initialLength = 0])
      : sourceBuffer = Float32x4List(
    initialLength,
  );

  @override
  Float32x4List get sourceTypedBuffer => sourceBuffer;

  @override
  Float32x4 get defaultValue => Float32x4.zero();

  @override
  Float32x4List createBuffer(int size) => Float32x4List(size);
}
