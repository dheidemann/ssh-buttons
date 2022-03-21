import 'package:flutter/material.dart';

class ColumnSpacer extends StatelessWidget {
  final List<Widget> children;
  final double spacing;

  ColumnSpacer(this.children, this.spacing);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children
          .map((c) => Container(
                padding: EdgeInsets.only(bottom: spacing),
                child: c,
              ))
          .toList(),
    );
  }
}

class RowSpacer extends StatelessWidget {
  final List<Widget> children;
  final double spacing;

  RowSpacer(this.children, this.spacing);

  Widget build(BuildContext context) {
    return Wrap(
      children: children
          .map((c) => Container(
                padding: EdgeInsets.fromLTRB(0, 0, spacing, spacing),
                child: c,
              ))
          .toList(),
    );
  }
}
