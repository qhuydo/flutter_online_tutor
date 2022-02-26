import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

const searchBarHeight = 64.0;

class ScaffoldWithSearchBar extends StatefulWidget {
  final FloatingSearchBarBuilder builder;
  final List<Widget>? actions;
  final List<Widget>? leadingActions;
  final String? hint;
  final Widget? body;
  final OnQueryChangedCallback? onSubmitted;
  final OnQueryChangedCallback? onQueryChanged;
  final OnFocusChangedCallback? onFocusChanged;

  const ScaffoldWithSearchBar({
    Key? key,
    required this.builder,
    this.actions,
    this.leadingActions,
    this.hint,
    this.body,
    this.onSubmitted,
    this.onQueryChanged,
    this.onFocusChanged,
  }) : super(key: key);

  @override
  _ScaffoldWithSearchBarState createState() => _ScaffoldWithSearchBarState();
}

class _ScaffoldWithSearchBarState extends State<ScaffoldWithSearchBar> {
  final controller = FloatingSearchBarController();

  Widget buildSearchBar(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      height: searchBarHeight,
      border: BorderSide(
        color: Colors.grey.withOpacity(0.4),
        width: 1.25,
      ),
      elevation: 0,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      automaticallyImplyBackButton: false,
      controller: controller,
      clearQueryOnClose: false,
      hint: widget.hint,
      iconColor: Colors.grey,
      transitionDuration: const Duration(milliseconds: 300),
      transitionCurve: Curves.easeInOutCubic,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      actions: widget.actions,
      leadingActions: widget.leadingActions,
      debounceDelay: const Duration(milliseconds: 200),
      scrollPadding: EdgeInsets.zero,
      transition: CircularFloatingSearchBarTransition(spacing: 16),
      builder: widget.builder,
      body: widget.body,
      onSubmitted: widget.onSubmitted,
      onFocusChanged: widget.onFocusChanged,
      onQueryChanged: widget.onQueryChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSearchBar(context),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
