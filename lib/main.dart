import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDesign(),
    );
  }
}


class ProductDesign extends StatefulWidget {
  @override
  _ProductDesignState createState() => _ProductDesignState();
}

class _ProductDesignState extends State<ProductDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: (){}),
          title: Text("First App"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),

            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search),

            ),
          ],
        ),
//        body: SafeArea(child: CustomScrollView(
//          slivers: <Widget>[
//            SliverGrid(
//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 4,
//                childAspectRatio: 1.0,
//                crossAxisSpacing: 10.0,
//                mainAxisSpacing: 10.0
//              ),
//              delegate:  SliverChildBuilderDelegate((context, index){
//                return Container(
//                  color: Colors.red,
//                  child: Center(child: Text("$index")),
//                );
//              }, childCount: 10000),
//            )
//          ],
//        ))
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _textField(),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _textField(),
         ), Padding(
           padding: const EdgeInsets.all(10.0),
           child: _textField(),
         ), Padding(
           padding: const EdgeInsets.all(10.0),
           child: _textField(),
         ),
        ],
      ),
    ),
    );
  }

  TextField _textField() {
    return TextField(
         decoration: InputDecoration(
           contentPadding: EdgeInsets.all(20.0),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20.0),
             borderSide: BorderSide(color: Colors.amber, style: BorderStyle.solid,width: 2.0)
           )
         ),
       );
  }
}