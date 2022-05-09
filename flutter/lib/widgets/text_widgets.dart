import 'package:flutter/material.dart';

class ThemedText extends StatelessWidget {
  const ThemedText(
    this.title, {
    Key? key,
    this.textStyle,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? textStyle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle?.copyWith(color: color),
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText(
    this.title, {
    Key? key,
    this.color,
  }) : super(key: key);
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

/// Headline -> color: onPrimary
class Headline1 extends StatelessWidget {
  const Headline1(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline1?.merge(style),
    );
  }
}

class Headline2 extends StatelessWidget {
  const Headline2(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline2?.merge(style),
    );
  }
}

class Headline3 extends StatelessWidget {
  const Headline3(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline3?.merge(style),
    );
  }
}

class Headline4 extends StatelessWidget {
  const Headline4(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline4?.merge(style),
    );
  }
}

class Headline5 extends StatelessWidget {
  const Headline5(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline5?.merge(style),
    );
  }
}

class Headline6 extends StatelessWidget {
  const Headline6(
    this.title, {
    Key? key,
    this.style,
    this.color,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.headline6?.merge(style),
    );
  }
}

class UnitLabel extends StatelessWidget {
  const UnitLabel(this.title, {this.style, this.color});

  final String title;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ThemedText(
      title,
      color: color,
      textStyle: theme.textTheme.caption?.merge(style),
    );
  }
}
