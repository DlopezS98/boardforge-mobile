import 'package:flutter/material.dart';

class RoundedInputField extends StatefulWidget {
  final String placeholder;
  final ValueChanged<String> onChanged;
  final bool isPassword;
  final Widget trailing;

  const RoundedInputField({
    super.key,
    this.placeholder = 'Enter text',
    required this.onChanged,
    this.isPassword = false,
    this.trailing = const SizedBox.shrink(),
  });

  @override
  State<RoundedInputField> createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      obscureText: showPassword,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
                  onPressed:
                      () => setState(() {
                        showPassword = !showPassword;
                      }),
                )
                : widget.trailing,
      ),
    );
  }
}
