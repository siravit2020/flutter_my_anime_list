import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTopAnimeIndicatorCubit extends Cubit<int> {
  HomeTopAnimeIndicatorCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
