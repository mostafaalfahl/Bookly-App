import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
    this.onSubmitted,
    required this.validator,
    this.onPressed, required this.controller,
  });

  final void Function(String)? onSubmitted;
  final FormFieldValidator<String> validator;
  final void Function()? onPressed;
  final TextEditingController controller ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      key: key,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.8),
        ),
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 195, 124, 124),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          6,
        ),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
