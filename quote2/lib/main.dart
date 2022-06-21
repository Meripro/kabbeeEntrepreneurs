// Tutorial 17 list of data

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: QuoteList(),
//     ));

// class QuoteList extends StatefulWidget {
//   QuoteList({Key? key}) : super(key: key);

//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {
//   List<String> quotes = [
//     'Be yourself; everyone else is already taken ',
//     'I have nothing to declare except by genius',
//     'The truth is rarely pure and never simple'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 85, 79, 81),
//       appBar: AppBar(
//         title: Text('Awesome Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//       ),
//       body: Center(
//         child: Column(
//           children: quotes
//               .map((quote) => Text(
//                     quote,
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }

// Tutorial 18 custom class

// import 'package:flutter/material.dart';
// import 'quote.dart';

// void main() => runApp(MaterialApp(
//       home: QuoteList(),
//     ));

// class QuoteList extends StatefulWidget {
//   QuoteList({Key? key}) : super(key: key);

//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quote = [
//     Quote(
//         author: 'Oscar wilde',
//         text: 'Be yourself; everyone else is already taken '),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'I have nothing to declare except by genius'),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'The truth is rarely pure and never simple'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[100],
//       appBar: AppBar(
//         title: Text('Special Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.green[400],
//       ),
//       body: Column(
//         children: quote
//             .map((quote) => Text('${quote.author} - ${quote.text}'))
//             .toList(),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'quote.dart';

// void main() => runApp(
//       const MaterialApp(
//         home: QuoteList(),
//       ),
//     );

// class QuoteList extends StatefulWidget {
//   const QuoteList({Key? key}) : super(key: key);

//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quote = [
//     Quote(
//         author: 'Oscar wilde',
//         text: 'Be yourself; everyone else is already taken '),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'I have nothing to declare except by genius'),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'The truth is rarely pure and never simple'),
//   ];

//   // ignore: non_constant_identifier_names
//   Widget TemplateCard(quote) {
//     return Card(
//       margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               quote.text,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 16, 15, 15),
//                 fontSize: 20.0,
//               ),
//             ),
//             const SizedBox(height: 11.0),
//             Text(
//               quote.author,
//               style: const TextStyle(
//                 color: Colors.pink,
//                 fontSize: 15.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[600],
//       appBar: AppBar(
//         title: const Text('Quotes of the day'),
//         centerTitle: true,
//         backgroundColor: Colors.indigo[900],
//       ),
//       body: Column(
//         children: quote.map((quote) => TemplateCard(quote)).toList(),
//       ),
//     );
//   }
// }

// Tutorial 20 **Extracting widget**

// import 'package:flutter/material.dart';
// import 'quote_card.dart';
// import 'quote.dart';

// void main() => runApp(
//       const MaterialApp(
//         home: QuoteList(),
//       ),
//     );

// class QuoteList extends StatefulWidget {
//   const QuoteList({Key? key}) : super(key: key);

//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }

// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quote = [
//     Quote(
//         author: 'Oscar wilde',
//         text: 'Be yourself; everyone else is already taken '),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'I have nothing to declare except by genius'),
//     Quote(
//         author: 'Oscar wilde',
//         text: 'The truth is rarely pure and never simple'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[600],
//       appBar: AppBar(
//         title: const Text('Quotes of the day'),
//         centerTitle: true,
//         backgroundColor: Colors.indigo[900],
//       ),
//       body: Column(
//         children: quote.map((quote) => QuoteCard(quote: quote)).toList(),
//       ),
//     );
//   }
// }

// Tutorial 21 **        **

import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() => runApp(
      const MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quote = [
    Quote(
        author: 'Oscar wilde',
        text: 'Be yourself; everyone else is already taken '),
    Quote(
        author: 'Oscar wilde',
        text: 'I have nothing to declare except by genius'),
    Quote(
        author: 'Oscar wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: const Text('Quotes of the day'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
      ),
      body: Column(
        children: quote
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quote.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
