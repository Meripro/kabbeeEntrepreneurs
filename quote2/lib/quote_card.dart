//Tutorial 20

// import 'package:flutter/material.dart';
// import 'quote.dart';

// class QuoteCard extends StatelessWidget {
//   final Quote quote;
//   const QuoteCard({Key? key, required this.quote}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
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
// }

//Tutorial 21
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  const QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 16, 15, 15),
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 11.0),
            Text(
              quote.author,
              style: const TextStyle(
                color: Colors.pink,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: delete,
              icon: const Icon(
                // <-- Icon
                Icons.delete,
                size: 24.0,
              ),
              label: const Text('delete quote'), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}
