import 'package:bloc/bloc.dart';

class HomeScreenCubit extends Cubit<double> {
  HomeScreenCubit() : super(0);
  void add(double num1, double num2) {
    emit(num1 + num2);
  }

  void sub(double num1, double num2) {
    emit(num1 - num2);
  }

  void mul(double num1, double num2) {
    emit(num1 * num2);
  }

  void div(double num1, double num2) {
    if (num2 != 0) {
      emit(num1 / num2);
    } else {
      emit(double.nan);
    }
  }

}
