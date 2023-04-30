import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/re_card.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.imc,
      required this.result,
      required this.interpretation});

  final String imc;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('CALCULADORA IMC')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Seu Resultado',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReCard(
              color: kActiveCardColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(result, style: kResultTextStyle),
                    Text(imc, style: kIMCTextStyle),
                    Text(interpretation, style: kDescTextStyle, textAlign: TextAlign.center,),
                  ]),
            ),
          ),
          BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Voltar')
        ],
      ),
    );
  }
}
