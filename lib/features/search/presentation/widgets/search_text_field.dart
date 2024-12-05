import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/features/search/presentation/bloc/search_anime_bloc.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/search_anime_view_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';
import 'package:flutter_my_anime_list/shared/widgets/text_field/app_text_field.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({
    super.key,
    this.onChanged,
    this.onSearch,
    this.onViewTypeChanged,
  });

  final void Function(String)? onChanged;
  final void Function()? onSearch;
  final void Function(Set<SearchAnimeViewType>)? onViewTypeChanged;

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      titleSpacing: AppSize.s16,
      toolbarHeight: kTextTabBarHeight + 40 + (AppSize.s16 * 2) + AppSize.s08,
      title: ClipRRect(
        borderRadius: BorderRadius.circular(
          AppRadius.textFieldRadius,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                AppTextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  hintText: 'Search anime',
                  contentPadding: context.theme.inputDecorationTheme.contentPadding?.add(
                    const EdgeInsets.only(
                      right: 80,
                    ),
                  ),
                  onChanged: widget.onChanged,
                  onEditingComplete: widget.onSearch,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      reverseDuration: const Duration(milliseconds: 150),
                      transitionBuilder: (child, animation) {
                        final offset = Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation);
                        return SlideTransition(
                          position: offset,
                          child: child,
                        );
                      },
                      child: _isFocused
                          ? GestureDetector(
                              key: const ValueKey('search_button'),
                              onTap: widget.onSearch,
                              child: Container(
                                width: 80,
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: context.theme.appColors.primary,
                                  borderRadius: BorderRadius.circular(
                                    AppRadius.textFieldRadius,
                                  ),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: context.theme.appColors.white,
                                ),
                              ),
                            )
                          : GestureDetector(
                              key: const ValueKey('search_icon'),
                              behavior: HitTestBehavior.opaque,
                              onTap: _focusNode.requestFocus,
                              child: SizedBox(
                                width: 80,
                                height: double.maxFinite,
                                child: Icon(
                                  Icons.search,
                                  color: context.theme.appColors.primary,
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s08,
            ),
            BlocBuilder<SearchAnimeBloc, SearchAnimeState>(
              builder: (context, state) {
                return SegmentedButton<SearchAnimeViewType>(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppRadius.textFieldRadius,
                        ),
                      ),
                    ),
                  ),
                  segments: [
                    ButtonSegment(
                      value: SearchAnimeViewType.list,
                      icon: const Icon(Icons.list),
                      label: AppText.bodySmall('List', context: context),
                    ),
                    ButtonSegment(
                      value: SearchAnimeViewType.grid,
                      icon: const Icon(Icons.grid_view),
                      label: AppText.bodySmall('Grid', context: context),
                    ),
                  ],
                  selected: <SearchAnimeViewType>{
                    state.maybeMap(
                      initial: (state) => state.viewType,
                      loading: (state) => state.viewType,
                      succeed: (state) => state.viewType,
                      orElse: () => SearchAnimeViewType.list,
                    ),
                  },
                  onSelectionChanged: widget.onViewTypeChanged,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
