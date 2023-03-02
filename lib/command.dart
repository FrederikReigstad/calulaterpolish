import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'stack.dart';

abstract class Command {
  execute(CalcStack numbers);

}

class Add extends MasterClass {

  @override
  result(num numb1, num numb2) {
  return numb1+numb2;
  }

}

class Minus extends MasterClass {


  @override
  result(num numb1, num numb2) {
  return numb2-numb1;
  }

}


class Multiply extends MasterClass {

  @override
  result(num numb1, num numb2) {
  return numb1*numb2;
  }

}

class Divide extends MasterClass {
  @override
  result(num numb1, num numb2) {
    return numb2/numb1;
  }


}


abstract class MasterClass implements Command {
  @override
  execute(CalcStack numbers) {
    var numb1 = numbers.pop();
    var numb2 = numbers.pop();
    numbers.push(result(numb1, numb2));
    return numbers.peek();
  }

  result(num numb1, num numb2);

}


class Quit implements Command{
  @override
  execute(CalcStack numbers) {
    exit(1);
  }

}

class Clear implements Command {
  @override
  execute(CalcStack numbers) {
    numbers.clear();
  }

}
