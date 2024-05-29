import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'welcome_notifier.g.dart';
@riverpod
class Index extends _$Index {
  @override
  int build(){
    return 0;
  }
  void setIndex(int value){
    state = value;
  }
}
