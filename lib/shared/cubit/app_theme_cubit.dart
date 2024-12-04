import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/app/app_theme.dart';

class AppThemeCubit extends Cubit<AppTheme> {
  AppThemeCubit() : super(AppTheme.light());

  void changeTheme() {
    emit(
      state.brightness == Brightness.light ? AppTheme.dark() : AppTheme.light(),
    );
  }
}
