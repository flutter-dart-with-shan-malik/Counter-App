import'package:flutter/material.dart';

class Count extends StatefulWidget{
  const Count({super.key});

  @override
  State<Count> createState()    => _Count();
}

class _Count extends State<Count>{
int counter=0;
void _incrementCounter(){
  setState(() {
    counter++;
  });
}

void _restartCounting(){
  setState(() {
    counter=0;
  });
}
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("My Counter App",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Times New Roman",
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white
              ),
              onPressed: _incrementCounter, child: Text("Press Me",
            style: TextStyle(color: Colors.black,
            fontSize: 25),)),
            SizedBox(
              height: 80,
            ),
            Text("You have pushed this Button",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: "Times New Roman"
        ),),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 70),
          child: Text('$counter',
          style: TextStyle(color: Colors.white,
          fontFamily: 'Times New Roman',
          fontSize: 30),)
        ),
        Divider(
          height: 20,
        ),
        SizedBox(
          height: 30,
        ),
         Text("times.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),),
        SizedBox(
          height: 40,
        ),
        TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white
              ),
              onPressed: _restartCounting, child: Text("Start counting form Zero",
            style: TextStyle(color: Colors.black,
            fontSize: 25),)), 
          ],
        )
      ),
    );
  }
}