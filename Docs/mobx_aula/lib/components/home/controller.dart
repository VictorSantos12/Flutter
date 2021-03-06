import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

// O mixin Store é utilizado na geração do código

abstract class ControllerBase with Store {
  ControllerBase() {
    // autorun((_) {
    //   print(counter);
    // });
  }

  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }
}
