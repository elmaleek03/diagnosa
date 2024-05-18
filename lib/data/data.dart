import 'package:diagnosa/custom_input.dart';
import 'package:diagnosa/model/model.dart';

class Data {
  static List<Menu> menuUtama = [
    Menu(
      judul: 'Diabetes',
      endpoint: 'predict/diabetes',
      customInput: [
        CustomInputWidget(type: InputType.text, label: "mamak"),
        CustomInputWidget(type: InputType.switchInput, label: 'mimik'),
        CustomInputWidget(type: InputType.checkbox, label: 'mumuk'),
        // Add more BeaCukaiCihuy objects as needed
      ],
    ),
    Menu(
      judul: 'Sindrom Gopud',
      endpoint: 'predict/diabetes',
      customInput: [
        CustomInputWidget(type: InputType.text, label: "mamak"),
        CustomInputWidget(type: InputType.switchInput, label: 'mimik'),
        CustomInputWidget(type: InputType.checkbox, label: 'mumuk'),
        // Add more BeaCukaiCihuy objects as needed
      ],
    ),
  ];
}
