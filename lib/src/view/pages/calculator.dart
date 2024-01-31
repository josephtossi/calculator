import 'package:calculator/src/theme/constants.dart';
import 'package:calculator/src/view/widgets/calculator_button.dart';
import 'package:calculator/src/view/widgets/logo.dart';
import 'package:calculator/src/viewmodel/app_viewmodel/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Calculator extends ConsumerStatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends ConsumerState<Calculator> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            decoration: BoxDecoration(gradient: Constant.splashBackground),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(child: Logo()),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        ref.watch(appProvider).expression +
                            '\n' +
                            ref.watch(appProvider).result,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    flex: 2,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        final buttonText =
                            ref.read(appProvider).buttonTexts[index];
                        return CalculatorButton(
                          text: buttonText,
                          onPressed: () =>
                              ref.read(appProvider).onButtonPressed(buttonText),
                        );
                      },
                      itemCount: ref.read(appProvider).buttonTexts.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
