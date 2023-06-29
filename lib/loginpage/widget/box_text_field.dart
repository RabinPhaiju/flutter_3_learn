import 'package:flutter/material.dart';

class BoxTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback onTap;
  final VoidCallback onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String errorText;
  final String label;
  final Widget suffix;
  final Widget prefix;

  BoxTextField(
      {Key? key,
        required this.controller,
        required this.validator,
        this.keyboardType = TextInputType.text,
        this.obsecure = false,
        required this.onTap,
        this.isMulti = false,
        this.readOnly = false,
        this.autofocus = false,
        required this.errorText,
        required this.label,
        required this.suffix,
        required this.prefix,
        this.enabled = true,
        required this.onEditingCompleted,
        required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
          onChanged: onChanged,
          onEditingComplete: onEditingCompleted,
          autofocus: autofocus,
          minLines: isMulti ? 4 : 1,
          maxLines: isMulti ? null : 1,
          onTap: onTap,
          enabled: enabled,
          readOnly: readOnly,
          obscureText: obsecure,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            errorText: errorText,
            prefixIcon: prefix,
            suffixIcon: suffix,
            labelText: label,
            hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 15),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          ),
          validator: validator),
    );
  }
}