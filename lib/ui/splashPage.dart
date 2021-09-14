import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/ui/cat/cat_homepage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late CurvedAnimation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    )..forward();
    _animation=new CurvedAnimation(parent: _controller, curve: Curves.bounceIn)..addStatusListener((status) { 
      if(status==AnimationStatus.completed){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CatHomePage()));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConst.exodusFruit,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: AnimatedBuilder(
            animation: _animation,
              child: new Container(width: 200.0, height: 200.0, color: Colors.green),
              builder: (BuildContext context, Widget? child) {
                return new Transform.rotate(
                  angle: _controller.value * 2.0 * 3.1415,
                  child: Image.asset("assets/images/cat_img.png",width: MediaQuery.of(context).size.width*3/4,),
                );
              },
          ),
        ),
      ),
    );
  }
}