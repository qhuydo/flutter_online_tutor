import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

const searchBarHeight = 64.0;

class ScaffoldWithSearchBar extends StatelessWidget {
  final FloatingSearchBarBuilder builder;
  final List<Widget>? actions;
  final List<Widget>? leadingActions;
  final String? hint;
  final Widget? body;
  final Widget? title;
  final OnQueryChangedCallback? onSubmitted;
  final OnQueryChangedCallback? onQueryChanged;
  final OnFocusChangedCallback? onFocusChanged;
  final FloatingSearchBarController? controller;
  final Key? searchBarKey;

  const ScaffoldWithSearchBar({
    Key? key,
    required this.builder,
    this.actions,
    this.leadingActions,
    this.hint,
    this.title,
    this.body,
    this.onSubmitted,
    this.onQueryChanged,
    this.onFocusChanged,
    this.controller,
    this.searchBarKey,
  }) : super(key: key);

  Widget buildSearchBar(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Theme(
      data: Theme.of(context),
      child: FloatingSearchBar(
        key: searchBarKey,
        height: searchBarHeight,
        border: BorderSide(
          color: Colors.grey.withOpacity(0.4),
          width: 1.25,
        ),
        elevation: 0,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        // clearQueryOnClose: true,
        // closeOnBackdropTap: true,
        automaticallyImplyBackButton: false,
        transitionDuration: const Duration(milliseconds: 300),
        physics: const BouncingScrollPhysics(),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        openAxisAlignment: 0.0,
        transitionCurve: Curves.easeInOutCubic,
        iconColor: Colors.grey,
        debounceDelay: const Duration(milliseconds: 200),
        transition: CircularFloatingSearchBarTransition(spacing: 16),
        title: title,
        controller: controller,
        hint: hint,
        actions: actions,
        leadingActions: leadingActions,
        scrollPadding: EdgeInsets.zero,
        builder: builder,
        body: body,
        onSubmitted: onSubmitted,
        onFocusChanged: onFocusChanged,
        onQueryChanged: onQueryChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSearchBar(context),
    );
  }
}
