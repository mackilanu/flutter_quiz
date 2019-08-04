import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result(this.finalScore, this.resetHandler);

  String get finalPhrase {
    var finalText = 'You did it!';

    if(finalScore <= 8) {
      finalText = 'You are awesome!';
    } else if(finalScore <= 12) {
      finalText = 'You are OK!';
    } else if(finalScore <= 16) {
      finalText = 'You are bad!';
    }else {
      finalText = 'You are the worst of bad!';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              finalPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            FlatButton(
              child: Text('Restart Quiz!'),
              textColor: Colors.blue,
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
