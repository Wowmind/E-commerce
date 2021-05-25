import 'package:fashion/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Models(),

  ));
}

class Models extends StatefulWidget {
  const Models({Key key}) : super(key: key);

  @override
  _ModelsState createState() => _ModelsState();
}

class _ModelsState extends State<Models> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/model6.jpeg',
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40,),
                    Text(
                      'DOLCE & GABBANA',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'Drop a Chic Selection of Outerwear ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    Text(
                      'for 2021 Spring/Summer ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 200,),

                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Shops()));
                      },
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 26,
                        ),
                      ),
                      elevation: 0.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset(
                'assets/model0.jpeg',
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )
            ],
          )
        ],
      ),
    );
  }
}

