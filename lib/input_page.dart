import 'package:bmi_calculator/re_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReCard(
                    color: cardColor,
                    child: IconContent(
                      icon: Icon(
                        FontAwesomeIcons.mars,
                        size: 60,
                      ),
                      label: 'HOMEM',
                    ),
                  ),
                ),
                Expanded(
                  child: ReCard(
                    color: cardColor,
                    child: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 60,
                        ),
                        label: 'MULHER'),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReCard(
              color: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReCard(
                    color: cardColor,
                  ),
                ),
                Expanded(
                  child: ReCard(
                    color: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEB1555)),
              child: const Text('Calcular IMC'),
            ),
          ),
        ],
      ),
    );
  }
}
