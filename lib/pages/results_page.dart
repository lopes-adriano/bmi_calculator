import 'package:bmi_calculator/components/re_card.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Seu Resultado',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReCard(
              color: kActiveCardColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('NORMAL', style: kResultTextStyle),
                    Text('20', style: kIMCTextStyle),
                    Text('Descrição', style: kDescTextStyle),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
