import 'package:flutter_test/flutter_test.dart';
import 'package:simulapp/viewmodels/login_viewmodel.dart';

void main() {
  late LoginViewModel viewModel;

  setUp(() {
    viewModel = LoginViewModel();
  });

  group('LoginViewModel', () {
    test('initial isLoading should be false', () {
      expect(viewModel.isLoading.value, false);
    });

    test('isLoading can be set to true', () {
      viewModel.isLoading.value = true;
      expect(viewModel.isLoading.value, true);
    });

    test('isLoading can be set back to false', () {
      viewModel.isLoading.value = true;
      viewModel.isLoading.value = false;
      expect(viewModel.isLoading.value, false);
    });

    // Note: Testing the actual login method would require mocking FirebaseAuth,
    // which involves more complex setup with dependency injection.
    // For a complete test, you'd need to:
    // 1. Refactor LoginViewModel to accept FirebaseAuth as a parameter
    // 2. Use mockito to generate mocks
    // 3. Mock the signInWithEmailAndPassword method
  });
}