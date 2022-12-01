import 'package:flutter/widgets.dart';

/// Hides keyboard when [child] is tapped on a non-input widget.
///
class HideKeyboardOnTap extends StatelessWidget {
  const HideKeyboardOnTap({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
