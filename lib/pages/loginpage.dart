import 'package:flutter/material.dart';
import 'quote_form.dart';

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _logoAnimationController;
  Animation<double> _logoAnimation;
  
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      _logoAnimationController = new AnimationController( vsync: this, duration: new Duration(milliseconds: 1500));
      _logoAnimation = new CurvedAnimation( parent: _logoAnimationController , curve: Curves.easeInOut);


      _logoAnimation.addListener(()=> this.setState(() {}));
      _logoAnimationController.forward();
    }

    


  @override
  Widget build(BuildContext cintext){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/login.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage("assets/logo.png"),
                width: _logoAnimation.value * 300,
                height: _logoAnimation.value * 120,
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new MaterialButton(
                color: Colors.green,
                child: new Text("Get A Quote"),
                textColor: Colors.white,
               onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new QuoteForm()),
                  );
                }
              )
            ],
          )
        ],
      ),
    );
  }
}