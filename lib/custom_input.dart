import 'package:flutter/material.dart';

enum InputType { text, switchInput, checkbox }

class CustomInputWidget extends StatefulWidget {
  final InputType type;
  final String label;

  CustomInputWidget({required this.type, required this.label, Key? key})
      : super(key: key);

  @override
  _CustomInputWidgetState createState() => _CustomInputWidgetState();
}

class _CustomInputWidgetState extends State<CustomInputWidget> {
  TextEditingController _controller = TextEditingController();
  bool _switchValue = false;
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case InputType.text:
        return Row(
          children: [
            Text(widget.label),
            Expanded(
              child: TextField(
                controller: _controller,
              ),
            ),
          ],
        );
      case InputType.switchInput:
        return Row(
          children: [
            Text(widget.label),
            Switch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ],
        );
      case InputType.checkbox:
        return Row(
          children: [
            Text(widget.label),
            Checkbox(
              value: _checkboxValue,
              onChanged: (value) {
                setState(() {
                  _checkboxValue = value ?? false;
                });
              },
            ),
          ],
        );
      default:
        return Container();
    }
  }
}
