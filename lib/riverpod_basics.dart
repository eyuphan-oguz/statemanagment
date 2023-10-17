import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagment/all_providers.dart';

class RiverpodBasics extends StatelessWidget {
  const RiverpodBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (context,ref,child){
          var title = ref.watch(titleProvider);
          return Text(title);
        }),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyCounterText(),
            const MyText(),
            
          ],
        ),
      ),
      floatingActionButton: MyFloatActionButton()
    );
  }
}

class MyCounterText extends ConsumerWidget {
  const MyCounterText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sayac = ref.watch(sayacStateProvider);
    return Text(sayac.toString());
  }
}

class MyText extends ConsumerWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var text = ref.watch(textProvider);
    return Text(text);
  }
}



class MyFloatActionButton extends ConsumerWidget {
  const MyFloatActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return FloatingActionButton(
        onPressed: (){
          ref.read(sayacStateProvider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      );
  }
}