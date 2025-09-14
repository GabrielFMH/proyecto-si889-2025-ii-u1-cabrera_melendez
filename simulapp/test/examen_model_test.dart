import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simulapp/models/examen_model.dart';

void main() {
  group('Examen', () {
    test('Examen constructor should set all fields correctly', () {
      final fecha = DateTime(2025, 9, 15);
      final examen = Examen(
        nombre: 'Test Exam',
        descripcion: 'Test description',
        imagen: 'test.jpg',
        fecha: fecha,
        examenId: 'TEST',
      );

      expect(examen.nombre, 'Test Exam');
      expect(examen.descripcion, 'Test description');
      expect(examen.imagen, 'test.jpg');
      expect(examen.fecha, fecha);
      expect(examen.examenId, 'TEST');
    });

    test('allCambridgeExamenes should contain expected exams', () {
      expect(allCambridgeExamenes.length, 2);
      expect(allCambridgeExamenes[0].nombre, 'C1 Advanced (CAE)');
      expect(allCambridgeExamenes[0].examenId, 'CAE');
      expect(allCambridgeExamenes[1].nombre, 'C2 Proficiency (FCE)');
      expect(allCambridgeExamenes[1].examenId, 'FCE');
    });

    test('allMichiganExamenes should contain expected exams', () {
      expect(allMichiganExamenes.length, 1);
      expect(allMichiganExamenes[0].nombre, 'MET');
      expect(allMichiganExamenes[0].examenId, 'MET');
    });

    test('allToeflExamenes should contain expected exams', () {
      expect(allToeflExamenes.length, 1);
      expect(allToeflExamenes[0].nombre, 'TOEFL ITP');
      expect(allToeflExamenes[0].examenId, 'TOEFL');
    });
  });

  group('AppColors', () {
    test('AppColors should have correct values', () {
      expect(AppColors.color1, const Color(0xFF377899));
      expect(AppColors.color2, const Color(0xFF1F4355));
      expect(AppColors.color3, const Color(0xFF52B6E6));
      expect(AppColors.white, Colors.white);
    });
  });
}