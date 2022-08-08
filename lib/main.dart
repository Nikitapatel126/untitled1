import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: one(),
  ));
}
class one extends StatelessWidget {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body: Column(
        children: [
          TextField(controller: t1),
          TextField(controller: t2),
          TextField(controller: t3),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                String a = t1.text;
                String b = t2.text;
                String c = t3.text;

                int n1 = int.parse(a);
                int n2 = int.parse(b);
                int n3 = int.parse(c);

                int sum = n1 + n2 + n3;

                print("sum = $sum");
              }, child: Text("sum")),
              ElevatedButton(onPressed: () {
                String a = t1.text;
                String b = t2.text;
                String c = t3.text;

                int n1 = int.parse(a);
                int n2 = int.parse(b);
                int n3 = int.parse(c);

                print("a = &n1");
                print("b = &n2");
                print("c = &n3");

              }, child: Text("Submit"))
            ],
          ),
        ],
      ),
    );
  }
}
