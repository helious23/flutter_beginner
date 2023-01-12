import 'package:flutter/material.dart';
import 'package:splash_screen/components/number_row.dart';
import 'package:splash_screen/constant/color.dart';

class SettingsScreen extends StatefulWidget {
  final int maxNumber;

  const SettingsScreen({
    super.key,
    required this.maxNumber,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(
                onSliderChanged: onSliderChanged,
                maxNumber: maxNumber,
                onButtonPressed: onButtonPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onButtonPressed() {
    Navigator.of(context).pop(
      maxNumber.toInt(),
    );
  }

  void onSliderChanged(double value) {
    setState(() {
      maxNumber = value;
    });
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.maxNumber,
  }) : super(key: key);

  final double maxNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: NumberRow(
      number: maxNumber.toInt(),
    ));
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onButtonPressed;
  final ValueChanged<double>? onSliderChanged;
  final double maxNumber;

  const _Footer({
    required this.onButtonPressed,
    required this.onSliderChanged,
    required this.maxNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
            value: maxNumber,
            min: 1000,
            max: 100000,
            onChanged: onSliderChanged),
        ElevatedButton(
          onPressed: onButtonPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: RED_COLOR,
          ),
          child: const Text('저장'),
        )
      ],
    );
  }
}
