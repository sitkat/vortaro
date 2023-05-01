import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_button.dart';
import 'package:vortaro/app/ui/components/app_text_field.dart';

class AppDialogThreeParams extends StatefulWidget {
  const AppDialogThreeParams({
    Key? key,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.onPressed,
  }) : super(key: key);

  final String val1;
  final String val2;
  final String val3;

  final Function(String v1, String v2, String v3) onPressed;

  @override
  State<AppDialogThreeParams> createState() => _AppDialogThreeParamsState();
}

class _AppDialogThreeParamsState extends State<AppDialogThreeParams> {
  final val1Controller = TextEditingController();
  final val2Controller = TextEditingController();
  final val3Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    val1Controller.dispose();
    val2Controller.dispose();
    val3Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AppTextField(
                    controller: val1Controller, labelText: widget.val1),
                const SizedBox(height: 16),
                AppTextField(
                    controller: val2Controller, labelText: widget.val2),
                const SizedBox(height: 16),
                AppTextField(
                    controller: val3Controller, labelText: widget.val3),
                const SizedBox(height: 16),
                AppButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        Navigator.pop(context);
                        widget.onPressed(
                          val1Controller.text,
                          val2Controller.text,
                          val3Controller.text,
                        );
                      }
                    },
                    text: "Применить"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
