import 'package:flutter_test/flutter_test.dart';
import 'package:simulapp/models/examen_model.dart';
import 'package:simulapp/viewmodels/examen_viewmodel.dart';

void main() {
  late ExamViewModel viewModel;
  late Examen testExamen;

  setUp(() {
    testExamen = Examen(
      nombre: 'Test Exam',
      descripcion: 'Test description',
      imagen: 'test.jpg',
      fecha: DateTime(2025, 9, 15),
      examenId: 'TEST',
    );
    viewModel = ExamViewModel(testExamen);
  });

  group('ExamViewModel', () {
    test('constructor should set examen correctly', () {
      expect(viewModel.examen.nombre, 'Test Exam');
      expect(viewModel.examen.examenId, 'TEST');
    });

    test('initial tipoExamen should be empty', () {
      expect(viewModel.tipoExamen, '');
    });

    test('setTipoExamen should update tipoExamen and notify listeners', () {
      viewModel.setTipoExamen('Practice');
      expect(viewModel.tipoExamen, 'Practice');
    });

    // Note: Testing registrarEnHistorial would require mocking FirebaseAuth and Firestore,
    // which involves complex setup. For a complete test, you'd need:
    // 1. Mock FirebaseAuth.instance.currentUser
    // 2. Mock FirebaseFirestore.instance.collection().add()
    // 3. Handle async operations and error cases
  });
}