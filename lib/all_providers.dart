
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagment/model/sayac_model.dart';
import 'package:statemanagment/sayac_manager.dart';

final titleProvider = Provider<String>((ref)=>'Riverpod Basics');
final title2Provider = Provider<String>((ref)=>'Riverpod StateNotifier Kullanimi');
final textProvider = Provider<String>((ref){
  return 'You have pushed the button this many times:';
});

final sayacStateProvider = StateProvider<int>((ref) {
  return 0;
});

final sayacNotifierProvider = StateNotifierProvider<SayacManager,SayacModel>((ref)  {
  return SayacManager();
});


final tekCiftProvider = Provider<bool>((ref) {
  var sayacModel = ref.watch(sayacNotifierProvider);

  return sayacModel.sayac%2 == 0 ;

});
