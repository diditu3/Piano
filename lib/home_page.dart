import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano/widgets/BlackKeys.dart';
import 'package:piano/widgets/WhiteKeys.dart';

class Piano extends StatefulWidget {
  const Piano({super.key});

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  Widget build(BuildContext context) {
    return   SafeArea(child: Scaffold(
      // appBar: AppBar(title: Text("PIANO")),
      body: Column(children: [
        Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height / 2,
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: Stack(children: [
              Row(children: [
                WhiteKeys(keysound: 1),
                WhiteKeys(keysound: 2,),
                WhiteKeys(keysound: 3,),
                WhiteKeys(keysound: 4,),
                WhiteKeys(keysound: 5,),
                WhiteKeys(keysound: 6,),
                WhiteKeys(keysound: 7,),
                WhiteKeys(keysound: 8,),
              ],),
              Row(children: [
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
                BlackKeys(),
              ],),
            ],),
          ),
        ),
      ],),
    ));
  }
}


