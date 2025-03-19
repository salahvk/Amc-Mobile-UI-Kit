import 'package:flutter/material.dart';

class AMCPaddings extends EdgeInsets {
  static const AMCPaddings zero = AMCPaddings.only();
  const AMCPaddings.all(super.value) : super.all();

  const AMCPaddings.symmetric({super.vertical, super.horizontal})
      : super.symmetric();

  const AMCPaddings.fromLTRB(super.left, super.top, super.right, super.bottom)
      : super.fromLTRB();

  const AMCPaddings.only({
    super.left,
    super.top,
    super.right,
    super.bottom,
  }) : super.only();

  const AMCPaddings.a16() : super.all(16);
  const AMCPaddings.a20() : super.all(20);
  const AMCPaddings.a24() : super.all(24);

  const AMCPaddings.h16() : super.symmetric(horizontal: 16);
  const AMCPaddings.h20() : super.symmetric(horizontal: 20);
  const AMCPaddings.h16v20() : super.symmetric(horizontal: 16, vertical: 20);
  const AMCPaddings.h20v16() : super.symmetric(horizontal: 20, vertical: 16);
  const AMCPaddings.h16v24() : super.symmetric(horizontal: 16, vertical: 24);
  const AMCPaddings.h20v24() : super.symmetric(horizontal: 20, vertical: 24);
  const AMCPaddings.h20v32() : super.symmetric(horizontal: 20, vertical: 32);

  const AMCPaddings.sheetDefault() : super.fromLTRB(20, 22, 20, 20);
}
