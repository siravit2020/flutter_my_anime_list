import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/di/injector.dart';
import 'package:flutter_my_anime_list/features/search/domain/usecase/search_anime_usecase.dart';
import 'package:flutter_my_anime_list/features/search/presentation/bloc/search_anime_bloc.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_content.dart';

class SearchAnimeScreen extends StatelessWidget {
  const SearchAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchAnimeBloc(
        injector.get<SearchAnimeUsecase>(),
      ),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: SearchAnimeContent(),
      ),
    );
  }
}
