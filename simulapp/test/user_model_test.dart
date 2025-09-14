import 'package:flutter_test/flutter_test.dart';
import 'package:simulapp/models/user_model.dart';

void main() {
  group('UserModel', () {
    test('toMap should return correct map', () {
      final createdAt = DateTime(2023, 10, 1);
      final user = UserModel(
        uid: 'test-uid',
        username: 'testuser',
        email: 'test@example.com',
        createdAt: createdAt,
      );

      final map = user.toMap();

      expect(map['username'], 'testuser');
      expect(map['email'], 'test@example.com');
      expect(map['createdAt'], createdAt);
    });

    test('UserModel constructor should set all fields correctly', () {
      final createdAt = DateTime(2023, 10, 1);
      final user = UserModel(
        uid: 'test-uid',
        username: 'testuser',
        email: 'test@example.com',
        createdAt: createdAt,
      );

      expect(user.uid, 'test-uid');
      expect(user.username, 'testuser');
      expect(user.email, 'test@example.com');
      expect(user.createdAt, createdAt);
    });
  });
}