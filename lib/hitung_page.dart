import 'package:diagnosa/model/model.dart';
import 'package:diagnosa/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loader_overlay/loader_overlay.dart';

class HitungPage extends StatefulWidget {
  final Menu dataMenu;

  const HitungPage({required this.dataMenu, super.key});

  @override
  State<HitungPage> createState() => _HitungPageState();
}

class _HitungPageState extends State<HitungPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final _controllers = List<TextEditingController>.generate(
    //   widget.dataMenu.textInput!.length,
    //   (_) => TextEditingController(),
    // );
    return LoaderOverlay(
      useDefaultLoading: true,
      overlayColor: Colors.black.withOpacity(0.5),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.dataMenu.judul),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    children:
                        widget.dataMenu.customInput.map((customInputWidget) {
                      return customInputWidget;
                    }).toList(),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // context.loaderOverlay.show();
                        // Map<String, double> data = {};
                        // for (int i = 0;
                        //     i < widget.dataMenu.textInput!.length;
                        //     i++) {
                        //   data['"${widget.dataMenu.textInput![i]}"'] =
                        //       double.parse(_controllers[i].text);
                        // }
                        // debugPrint('Data: $data');
                        // DiabetesResponse hasil =
                        //     await DiagnosaService.getResult(
                        //         widget.dataMenu.endpoint!, data);
                        context.loaderOverlay.hide();
                        // showDialog(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return AlertDialog(
                        //       title: Text('Hasil Diagnosa'),
                        //       content: Text('${hasil.result}'),
                        //       actions: <Widget>[
                        //         TextButton(
                        //           child: Text('OK'),
                        //           onPressed: () {
                        //             Navigator.of(context).pop();
                        //           },
                        //         ),
                        //       ],
                        //     );
                        //   },
                        // );
                      }
                    },
                    child: Text('Cek Diagnosa'),
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
