import 'package:diagnosa/model/model.dart';

class Data {
  static List<Menu> menuUtama = [
    Menu(judul: 'Diabetes', endpoint: 'predict/diabetes', textInput: [
      "pregnancies",
      "glucose",
      "blood_pressure",
      "skin_thickness",
      "insulin",
      "bmi",
      "diabetes_pedigree_function",
      "age"
    ]),
    Menu(judul: 'Sindrom Gopud', endpoint: 'predict/diabetes', textInput: [
      "pregnancies",
      "glucose",
      "blood_pressure",
      "skin_thickness",
      "insulin",
      "bmi",
      "diabetes_pedigree_function",
      "age"
    ]),
  ];
}
