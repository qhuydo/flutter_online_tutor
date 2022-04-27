import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'paginator_button.dart';

class Paginator extends StatefulWidget {
  final int totalPages;
  final int initialPage;
  final double height;

  final ValueChanged<int>? onPageChanged;
  final OutlinedBorder? buttonShape;

  const Paginator({
    Key? key,
    this.totalPages = 0,
    this.initialPage = 0,
    this.height = 48,
    this.onPageChanged,
    this.buttonShape,
  }) : super(key: key);

  @override
  _PaginatorState createState() => _PaginatorState();
}

class _PaginatorState extends State<Paginator> {
  late int _currentPage;
  int _maximumPosibleButtons = 0;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
  }

  void _navigateToPrevious() {
    setState(() {
      _currentPage--;
    });
    widget.onPageChanged?.call(_currentPage);
  }

  void _navigateToNext() {
    setState(() {
      _currentPage++;
    });
    widget.onPageChanged?.call(_currentPage);
  }

  void _navigateToPage(int index) {
    if (index == _currentPage) return;
    setState(() {
      _currentPage = index;
    });
    widget.onPageChanged?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PaginatorButton(
          shape: widget.buttonShape,
          child: const Icon(Icons.navigate_before),
          onPressed: _currentPage > 0 ? _navigateToPrevious : null,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              _maximumPosibleButtons =
                  (constraints.maxWidth / widget.height).floor();
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ..._generateButtonList(),
                  if (_shouldShowDotsButton) _buildDotsButton(context),
                  _buildPaginatorButton(widget.totalPages - 1),
                ],
              );
            },
          ),
        ),
        PaginatorButton(
          shape: widget.buttonShape,
          child: const Icon(Icons.navigate_next),
          onPressed:
              _currentPage < widget.totalPages - 1 ? _navigateToNext : null,
        ),
      ],
    );
  }

  bool get _shouldShowDotsButton =>
      _maximumPosibleButtons < widget.totalPages &&
      _currentPage < widget.totalPages - _maximumPosibleButtons ~/ 2 - 1;

  List<Widget> _generateButtonList() {
    var shownPages = _shouldShowDotsButton
        ? _maximumPosibleButtons - 2
        : _maximumPosibleButtons - 1;

    var minValue = max(0, _currentPage - shownPages ~/ 2);
    var maxValue = min(minValue + shownPages, widget.totalPages - 1);
    if (maxValue - minValue < shownPages) {
      minValue = (maxValue - shownPages).clamp(0, widget.totalPages - 1);
    }

    return List.generate(
      maxValue - minValue,
      (index) => _buildPaginatorButton(minValue + index),
    );
  }

  Widget _buildPaginatorButton(int index) => PaginatorButton(
        onPressed: () => _navigateToPage(index),
        isSelected: index == _currentPage,
        child: Text('${index + 1}'),
        shape: widget.buttonShape,
      );

  Widget _buildDotsButton(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.all(smallItemSpacing / 2),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: widget.buttonShape ?? const CircleBorder(),
        color: colourScheme.background,
      ),
      child: Icon(
        Icons.more_horiz,
        color: colourScheme.secondary,
        size: 20,
      ),
    );
  }
}
