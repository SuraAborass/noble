import 'package:flutter/material.dart';

import '../../Constants/font_styles.dart';

class ProfileTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecure;
  final String hint;
  const ProfileTextfield(
      {Key? key,
      required this.controller,
      required this.obsecure,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.start,
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
          fillColor: Colors.white,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
    );
  }
}

class PropertyTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  const PropertyTextfield({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        TextFormField(
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
          controller: controller,
          decoration: InputDecoration(
              fillColor: Colors.white,
              hintStyle: Theme.of(context).textTheme.bodyLarge,
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
        ),
      ],
    );
  }
}
