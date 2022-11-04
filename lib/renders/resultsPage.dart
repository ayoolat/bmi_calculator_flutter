import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../components/bottomButton.dart';
import '../components/reuseable_card.dart';

class ResultsPage extends StatelessWidget {
  final String BMIResults;
  final String resultsText;
  final String interpretation;

  ResultsPage(
      {required this.BMIResults,
      required this.interpretation,
      required this.resultsText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: (kLargeTextStyle)),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultsText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    BMIResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "RE-CALCULATE")
        ],
      ),
    );
  }
}
