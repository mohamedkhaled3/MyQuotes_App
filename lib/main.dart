import 'package:flutter/material.dart';
import 'package:myquotes/Widget/Card.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

///////////////////////////////////////////////////////////new class 1
class BestQuotes {
  String title;
  String author;

  BestQuotes({required this.title , required this.author});
}

class _QuotesState extends State<Quotes> {
///////////////////////////////////////////////////////////dart 2
 List AllQuotes = [
 BestQuotes(author: "Mohamed Khaled", title: "رايق من نوعة فاخر 🔥"),
 BestQuotes(author: "Mohamed Khaled", title: "العقل السليم في البعد عن الحريم 😂"),
 BestQuotes(author: "Mohamed Khaled", title: "كُتر التفكير فى الى ضااااع هيعمل لك فى دماغك صادااااع  😉 "),
 BestQuotes(author: "ELRAYEK", title: "فرح نفسك بنفسك ومتستناش حاجة حلوة من حد  ✋ "),
];



///////////////////////////////////////////////////////////flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
    
      appBar: AppBar(
      backgroundColor: Color.fromARGB(212, 54, 26, 100),
        title: Text(
          "Best Quotes",
          style: TextStyle(
            fontSize: 27,
          ),
        ),
      ),
    
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            // I need the num of Card = num of list "AllQuotes" 
            // we use map "AllQuotes.map((item) => (//that loop "import الي هيتكرر ولازم نعمله " ) )"
            //4  (3) is new class "CardWidget()"
            ...AllQuotes.map( (item) => CardWidget(  
              author:  item.author ,            //6  "required"
               title: item.title   ,           //6.1 "required"  remark "AllQuotes[item].author" -- is wrong bec. item is element not num 
               
              
              ) 
              
              ).toList() 
        ]),
      ),
    );
  }
}
