class CalcStack {
  List<num> _listNumb = [];

  push(num numb) {
    _listNumb.add(numb);
  }

  pop() {
    return _listNumb.removeLast();
  }

  peek() {
    return _listNumb.last;
  }

  isEmpty(){
    return _listNumb.length == 0;
  }

  clear(){
    return _listNumb.clear();
  }

  @override
  String toString() {
    return _listNumb.join(":");
  }

}
