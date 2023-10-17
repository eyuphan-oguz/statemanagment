import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/sayac_model.dart';



class SayacManager extends StateNotifier<SayacModel>{
  SayacManager() : super(SayacModel(0));

  void arttir(){
    state =SayacModel(state.sayac+1);
  }

  void azalt(){
    state = SayacModel(state.sayac-1);
  }


} 