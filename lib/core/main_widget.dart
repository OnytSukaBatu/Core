import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MainWidget {
  Widget text({
    required String data,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    TextStyle? style,
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    style ??= GoogleFonts.poppins();

    return Text(
      data,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Widget richText({
    required List<InlineSpan> children,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    TextAlign? textAlign,
    TextStyle? style,
    Color? defaultColor,
    double? defaultFontSize,
    FontWeight? defaultFontWeight,
  }) {
    overflow ??= TextOverflow.clip;
    softWrap = true;
    TextAlign textAlign = TextAlign.start;
    style ??= GoogleFonts.poppins();

    return RichText(
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
      text: TextSpan(
        style: style.copyWith(
          color: defaultColor,
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
        ),
        children: children,
      ),
    );
  }

  TextSpan textSpan({
    required String text,
    TextStyle? style,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    style ??= GoogleFonts.poppins();

    return TextSpan(
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      text: text,
    );
  }

  Widget textField({
    Widget? Function(
      BuildContext, {
      required int currentLength,
      required bool isFocused,
      required int? maxLength,
    })?
    buildCounter,
    TextEditingController? controller,
    Color? cursorColor,
    bool? enabled,
    Widget Function(BuildContext, String)? errorBuilder,
    bool? expands,
    String? initialValue,
    List<TextInputFormatter>? inputFormatters,
    TextInputType? keyboardType,
    int? maxLength,
    int? maxLines,
    int? minLines,
    bool? obscureText,
    Function(String?)? onChanged,
    Function(String?)? onFieldSubmitted,
    void Function()? onTap,
    bool? readOnly,
    TextStyle? style,
    TextAlign? textAlign,
    String? Function(String?)? validator,
    EdgeInsetsGeometry? contentPadding,
    Color? fillColor,
    Widget? hint,
    bool? isDense,
    Widget? label,
    Widget? prefix,
    Widget? suffix,
    TextStyle? counterStyle,
    TextStyle? errorStyle,
    Color? fontColor,
    double? fontSize,
    FontWeight? fontWeigt,
    Color? counterFontColor,
    double? counterFontSize,
    FontWeight? counterFontWeight,
    Color? errorFontColor,
    double? errorFontSize,
    FontWeight? errorFontWeight,
    InputBorder? disabledBorder,
    InputBorder? enabledBorder,
    InputBorder? errorBorder,
    InputBorder? focusedBorder,
    Color? disabledBorderColor,
    Color? enabledBorderColor,
    Color? errorBorderColor,
    Color? focusedBorderColor,
  }) {
    expands ??= false;
    obscureText ??= false;
    readOnly ??= false;
    style ??= GoogleFonts.poppins();
    textAlign ??= TextAlign.start;
    counterStyle ??= GoogleFonts.poppins();
    errorStyle ??= GoogleFonts.poppins();

    void onTapOutside(PointerDownEvent _) {
      FocusManager.instance.primaryFocus!.unfocus();
    }

    disabledBorder ??= OutlineInputBorder();
    enabledBorder ??= OutlineInputBorder();
    errorBorder ??= OutlineInputBorder();
    focusedBorder ??= OutlineInputBorder();

    disabledBorderColor ??= Colors.grey;
    enabledBorderColor ??= Colors.black;
    focusedBorderColor ??= Colors.blue;
    errorBorderColor ??= Colors.red;

    return TextFormField(
      buildCounter: buildCounter,
      controller: controller,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        counterStyle: counterStyle.copyWith(
          color: counterFontColor,
          fontSize: counterFontSize,
          fontWeight: counterFontWeight,
        ),
        disabledBorder: disabledBorder.copyWith(
          borderSide: BorderSide(color: disabledBorderColor),
        ),
        enabledBorder: enabledBorder.copyWith(
          borderSide: BorderSide(color: enabledBorderColor),
        ),
        errorBorder: errorBorder.copyWith(
          borderSide: BorderSide(color: errorBorderColor),
        ),
        errorStyle: errorStyle.copyWith(
          color: errorFontColor,
          fontSize: errorFontSize,
          fontWeight: errorFontWeight,
        ),
        fillColor: fillColor,
        filled: true,
        focusedBorder: focusedBorder.copyWith(
          borderSide: BorderSide(color: focusedBorderColor),
        ),
        hint: hint,
        isDense: isDense,
        label: label,
        prefix: prefix,
        suffix: suffix,
      ),
      enabled: enabled,
      errorBuilder: errorBuilder,
      expands: expands,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      obscureText: obscureText,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      onTapOutside: onTapOutside,
      readOnly: readOnly,
      style: style.copyWith(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeigt,
      ),
      textAlign: textAlign,
      validator: validator,
    );
  }

  Widget checkbox({
    required bool value,
    required void Function(bool?)? onChanged,
    Color? activeColor,
    Color? checkColor,
    Color? fillColor,
    BorderRadiusGeometry? borderRadius,
    Color? borderColor,
  }) {
    borderRadius ??= BorderRadius.zero;
    borderColor ??= Colors.black;

    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      checkColor: checkColor,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      side: BorderSide(color: borderColor),
    );
  }

  Widget radio({
    required bool value,
    required dynamic groupValue,
    required ValueChanged<Object?>? onChanged,
    Color? activeColor,
    Color? focusColor,
    bool? toggleable,
  }) {
    toggleable ??= false;

    return Radio(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: activeColor,
      focusColor: focusColor,
      toggleable: toggleable,
    );
  }

  Widget swicth({
    required bool value,
    required Function(bool?)? onChanged,
    Color? activeThumbColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
  }) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: activeThumbColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
    );
  }

  Widget dropDownButton({
    required dynamic value,
    required List<DropdownMenuItem<dynamic>>? items,
    required void Function(dynamic)? onChanged,
    AlignmentGeometry alignment = AlignmentDirectional.centerStart,
    BorderRadius? borderRadius,
    Color? dropdownColor,
    Widget? icon,
    bool? isDense,
    bool? isExpanded,
    EdgeInsetsGeometry? padding,
    TextStyle? style,
    EdgeInsetsGeometry? contentPadding,
    InputBorder? enabledBorder,
    InputBorder? focusedBorder,
    Color? fontColor,
    double? fontSize,
    FontWeight? fontWeight,
    Color? enabledBorderColor,
    Color? focusedBorderColor,
  }) {
    isDense ??= true;
    isExpanded ??= true;
    style ??= GoogleFonts.poppins();
    enabledBorder ??= OutlineInputBorder();
    focusedBorder ??= OutlineInputBorder();
    enabledBorderColor ??= Colors.black;
    focusedBorderColor ??= Colors.blue;

    return DropdownButtonFormField(
      value: value,
      items: items,
      onChanged: onChanged,
      alignment: alignment,
      borderRadius: borderRadius,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        enabledBorder: enabledBorder.copyWith(
          borderSide: BorderSide(color: enabledBorderColor),
        ),
        focusedBorder: focusedBorder.copyWith(
          borderSide: BorderSide(color: focusedBorderColor),
        ),
      ),
      dropdownColor: dropdownColor,
      icon: icon,
      isDense: isDense,
      isExpanded: isExpanded,
      padding: padding,
      style: style.copyWith(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

MainWidget get w => MainWidget();
