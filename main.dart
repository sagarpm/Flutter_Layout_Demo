import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Layout Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyBody(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyBody extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Flexible(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
            children: [
              Image.asset('flutter_bw.png', width: 400, height: 260, fit: BoxFit.cover,),
              Padding(padding: EdgeInsets.all(8.0),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                height: 80,
                //color: Colors.black12,
                //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(50.0),
                //gradient: LinearGradient(colors: [Color(0xFFFF0099), Color(0xFF493240)])
                //),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        //color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Main Text Here.', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('Subtitle Here.',),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    NewBody(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    /*IconButton(icon: Icon(Icons.star_border, color: Colors.blue,), onPressed: null, tooltip: 'Star the page',),
                    Text('num'),  //Add a number and then update it whenever the star icon is pressed. Need to make this whole thing a stateful widget.*/
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                //color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(icon: Icon(Icons.call, color: Colors.blue,), onPressed: null, iconSize: 30.0, tooltip: 'Contact',),
                          Text('Call', style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(icon: Icon(Icons.navigation, color: Colors.blue,), onPressed: null, iconSize: 30.0, tooltip: 'Navigation',),
                          Text('Route', style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(icon: Icon(Icons.share, color: Colors.blue,), onPressed: null, iconSize: 30.0, tooltip: 'Share'),
                          Text('Share', style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                  //color: Colors.black54,
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id imperdiet mauris, ac vestibulum quam. '
                      'Nullam pulvinar, risus ut eleifend porttitor, ex lacus congue lacus, sed pretium odio metus ut metus. Cras euismod et arcu nec mollis. '
                      'Sed pharetra luctus libero nec eleifend. Morbi quis tempor velit. Nulla varius sed tellus sit amet mollis. Suspendisse imperdiet arcu luctus lacinia tincidunt. '
                      'Aliquam malesuada in nibh nec feugiat. Proin porta ex et turpis dignissim efficitur. Nulla sit amet dui non nunc congue eleifend eget non lorem. '
                      'Praesent suscipit bibendum nunc, sed tincidunt risus suscipit ut. Suspendisse congue magna ac metus rutrum dapibus. '
                      'Mauris ac pharetra arcu, sit amet blandit arcu. Ut et egestas elit. Etiam a eros at nisi elementum tempus. '
                      'Proin consequat, nunc vel varius condimentum, neque neque fringilla tellus, imperdiet tempus justo mauris eu elit. '
                      'Nunc sagittis libero purus, nec ultrices justo consectetur id. Suspendisse venenatis ultrices libero, vitae finibus odio fringilla sed. '
                      'Vivamus ut odio dapibus mauris facilisis condimentum quis vitae sem. Aliquam elementum nunc commodo nibh aliquet dignissim vitae eu dui. '
                      'Quisque vitae massa sed dui malesuada volutpat et nec nunc. Proin rutrum, ipsum eu pretium tristique, tellus ligula rhoncus eros, quis porta mauris sem ac purus. '
                      'Aenean fermentum, nibh vel ornare vestibulum, nunc turpis consequat risus, sed rutrum diam nulla quis est. '
                      'Sed augue leo, malesuada sed finibus vitae, dignissim et odio. In eu ornare quam, ut fringilla nunc. Vivamus quis justo nisi. '
                      'Maecenas a interdum augue, vitae luctus lorem.')
              )
            ]
        ),
      );
  }
}

class NewBody extends StatefulWidget //Favourite button made interactive
{
  @override
  _NewBodyState createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody>
{
  bool _isFavourite =false;
  int _favourite=25;

  void toggleState()
  {
    setState(() {
      if(_isFavourite==true)
        {
          _isFavourite=false;
          _favourite--;
        }
      else
        {
          _isFavourite=true;
          _favourite++;
        }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            //color: Colors.blue,
            //padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: IconButton(
              icon: _isFavourite ? Icon(Icons.star, color: Colors.red,) : Icon(Icons.star_border, color: Colors.red,),
              onPressed: toggleState,
              iconSize: 24.0,
            ),
          ),
          SizedBox(
            width: 18.0,
            child: Text(
                '$_favourite'
            ),
          )
        ],
      );
