import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/src/css_parser.dart';

//Export Style value-unit APIs
export 'package:flutter_html/src/style/display.dart';
export 'package:flutter_html/src/style/margin.dart';
export 'package:flutter_html/src/style/padding.dart';
export 'package:flutter_html/src/style/length.dart';
export 'package:flutter_html/src/style/size.dart';
export 'package:flutter_html/src/style/fontsize.dart';
export 'package:flutter_html/src/style/lineheight.dart';
export 'package:flutter_html/src/style/marker.dart';
export 'package:flutter_html/src/style/radius.dart';

///This class represents all the available CSS attributes
///for this package.
class Style {
  /// CSS attribute "`background-color`"
  ///
  /// Inherited: no,
  /// Default: null (transparent),
  Color? backgroundColor;

  /// CSS attribute "`color`"
  ///
  /// Inherited: yes,
  /// Default: unspecified,
  Color? color;

  /// CSS attribute "`counter-increment`"
  ///
  /// Inherited: no
  /// Initial: none
  Map<String, int?>? counterIncrement;

  /// CSS attribute "`counter-reset`"
  ///
  /// Inherited: no
  /// Initial: none
  Map<String, int?>? counterReset;

  /// CSS attribute "`direction`"
  ///
  /// Inherited: yes,
  /// Default: TextDirection.ltr,
  TextDirection? direction;

  /// CSS attribute "`display`"
  ///
  /// Inherited: no,
  /// Default: inline,
  Display? display;

  /// CSS attribute "`font-family`"
  ///
  /// Inherited: yes,
  /// Default: Theme.of(context).style.textTheme.body1.fontFamily
  String? fontFamily;

  /// The list of font families to fall back on when a glyph cannot be found in default font family.
  ///
  /// Inherited: yes,
  /// Default: null
  List<String>? fontFamilyFallback;

  /// CSS attribute "`font-feature-settings`"
  ///
  /// Inherited: yes,
  /// Default: normal
  List<FontFeature>? fontFeatureSettings;

  /// CSS attribute "`font-size`"
  ///
  /// Inherited: yes,
  /// Default: FontSize.medium
  FontSize? fontSize;

  /// CSS attribute "`font-style`"
  ///
  /// Inherited: yes,
  /// Default: FontStyle.normal,
  FontStyle? fontStyle;

  /// CSS attribute "`font-weight`"
  ///
  /// Inherited: yes,
  /// Default: FontWeight.normal,
  FontWeight? fontWeight;

  /// CSS attribute "`height`"
  ///
  /// Inherited: no,
  /// Default: Height.auto(),
  Height? height;

  /// CSS attribute "`letter-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0),
  double? letterSpacing;

  /// CSS attribute "`list-style-image`"
  ///
  /// Inherited: yes,
  /// Default: TODO
  ListStyleImage? listStyleImage;

  /// CSS attribute "`list-style-type`"
  ///
  /// Inherited: yes,
  /// Default: ListStyleType.disc
  ListStyleType? listStyleType;

  /// CSS attribute "`list-style-position`"
  ///
  /// Inherited: yes,
  /// Default: ListStylePosition.OUTSIDE
  ListStylePosition? listStylePosition;

  /// CSS pseudo-element "`::marker`"
  ///
  /// Inherited: no,
  /// Default: null
  Marker? marker;

  /// CSS attribute "`margin`"
  ///
  /// Inherited: no,
  /// Default: Margins.zero
  Margins? margin;

  /// CSS attribute "`padding`"
  ///
  /// Inherited: no,
  /// Default: HtmlPaddings.zero
  HtmlPaddings? padding;

  /// CSS attribute "`text-align`"
  ///
  /// Inherited: yes,
  /// Default: TextAlign.start,
  TextAlign? textAlign;

  /// CSS attribute "`text-decoration`"
  ///
  /// Inherited: no,
  /// Default: TextDecoration.none,
  TextDecoration? textDecoration;

  /// CSS attribute "`text-decoration-color`"
  ///
  /// Inherited: no,
  /// Default: Current color
  Color? textDecorationColor;

  /// CSS attribute "`text-decoration-style`"
  ///
  /// Inherited: no,
  /// Default: TextDecorationStyle.solid,
  TextDecorationStyle? textDecorationStyle;

  /// Loosely based on CSS attribute "`text-decoration-thickness`"
  ///
  /// Uses a percent modifier based on the font size.
  ///
  /// Inherited: no,
  /// Default: 1.0 (specified by font size)
  // TODO(Sub6Resources): Possibly base this more closely on the CSS attribute.
  double? textDecorationThickness;

  /// CSS attribute "`text-shadow`"
  ///
  /// Inherited: yes,
  /// Default: none,
  List<Shadow>? textShadow;

  /// CSS attribute "`vertical-align`"
  ///
  /// Inherited: no,
  /// Default: VerticalAlign.baseline,
  VerticalAlign verticalAlign;

  /// CSS attribute "`white-space`"
  ///
  /// Inherited: yes,
  /// Default: WhiteSpace.NORMAL,
  WhiteSpace? whiteSpace;

  /// CSS attribute "`width`"
  ///
  /// Inherited: no,
  /// Default: Width.auto()
  Width? width;

  /// CSS attribute "`word-spacing`"
  ///
  /// Inherited: yes,
  /// Default: normal (0)
  double? wordSpacing;

  /// CSS attribute "`line-height`"
  ///
  /// Supported values: double values
  ///
  /// Unsupported values: normal, 80%, ..
  ///
  /// Inherited: no,
  /// Default: Unspecified (null),
  LineHeight? lineHeight;

  //TODO modify these to match CSS styles
  String? before;
  String? after;
  Border? border;
  Alignment? alignment;
  HtmlRadii? borderRadius;

  /// MaxLine
  ///
  ///
  ///
  ///
  int? maxLines;

  /// TextOverflow
  ///
  ///
  ///
  ///
  TextOverflow? textOverflow;

  /// CSS Attribute "`text-transform`"
  ///
  /// `uppercase`, `lowercase`, `capitalize`, and `none` supported.
  ///
  /// Inherited: yes,
  /// Default: `none`
  TextTransform? textTransform;

  Style({
    this.backgroundColor,
    this.color,
    this.counterIncrement,
    this.counterReset,
    this.direction,
    this.display,
    this.fontFamily,
    this.fontFamilyFallback,
    this.fontFeatureSettings,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.height,
    this.lineHeight,
    this.letterSpacing,
    this.listStyleImage,
    this.listStyleType,
    this.listStylePosition,
    this.padding,
    this.marker,
    this.margin,
    this.textAlign,
    this.textDecoration,
    this.textDecorationColor,
    this.textDecorationStyle,
    this.textDecorationThickness,
    this.textShadow,
    this.verticalAlign = VerticalAlign.baseline,
    this.whiteSpace,
    this.width,
    this.wordSpacing,
    this.before,
    this.after,
    this.border,
    this.borderRadius,
    this.alignment,
    this.maxLines,
    this.textOverflow,
    this.textTransform,
  }) {
    if (alignment == null && (display?.isBlock ?? false)) {
      alignment = Alignment.centerLeft;
    }
  }

  static Map<String, Style> fromThemeData(ThemeData theme) => {
        'h1': Style.fromTextStyle(theme.textTheme.displayLarge!),
        'h2': Style.fromTextStyle(theme.textTheme.displayMedium!),
        'h3': Style.fromTextStyle(theme.textTheme.displaySmall!),
        'h4': Style.fromTextStyle(theme.textTheme.headlineMedium!),
        'h5': Style.fromTextStyle(theme.textTheme.headlineSmall!),
        'h6': Style.fromTextStyle(theme.textTheme.titleLarge!),
        'body': Style.fromTextStyle(theme.textTheme.bodyMedium!),
      };

  static Map<String, Style> fromCss(
      String css, OnCssParseError? onCssParseError) {
    final declarations = parseExternalCss(css, onCssParseError);
    Map<String, Style> styleMap = {};
    declarations.forEach((key, value) {
      styleMap[key] = declarationsToStyle(value);
    });
    return styleMap;
  }

  TextStyle generateTextStyle() {
    return TextStyle(
      backgroundColor: ((display?.isBlock ?? false) || display == Display.inlineBlock) ? null : backgroundColor,
      color: color,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      decorationStyle: textDecorationStyle,
      decorationThickness: textDecorationThickness,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontFeatures: fontFeatureSettings,
      fontSize: fontSize?.value,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      shadows: textShadow,
      wordSpacing: wordSpacing,
      height: lineHeight?.size ?? 1.0,
    );
  }

  @override
  String toString() {
    return "Style";
  }

  Style merge(Style other) {
    return copyWith(
      backgroundColor: other.backgroundColor,
      color: other.color,
      counterIncrement: other.counterIncrement,
      counterReset: other.counterReset,
      direction: other.direction,
      display: other.display,
      fontFamily: other.fontFamily,
      fontFamilyFallback: other.fontFamilyFallback,
      fontFeatureSettings: other.fontFeatureSettings,
      fontSize: other.fontSize,
      fontStyle: other.fontStyle,
      fontWeight: other.fontWeight,
      height: other.height,
      lineHeight: other.lineHeight,
      letterSpacing: other.letterSpacing,
      listStyleImage: other.listStyleImage,
      listStyleType: other.listStyleType,
      listStylePosition: other.listStylePosition,
      padding: padding?.merge(other.padding) ?? other.padding,
      margin: margin?.merge(other.margin) ?? other.margin,
      marker: other.marker,
      textAlign: other.textAlign,
      textDecoration: other.textDecoration,
      textDecorationColor: other.textDecorationColor,
      textDecorationStyle: other.textDecorationStyle,
      textDecorationThickness: other.textDecorationThickness,
      textShadow: other.textShadow,
      verticalAlign: other.verticalAlign,
      whiteSpace: other.whiteSpace,
      width: other.width,
      wordSpacing: other.wordSpacing,
      before: other.before,
      after: other.after,
      border: border?.merge(other.border) ?? other.border,
      borderRadius: borderRadius ?? other.borderRadius,
      alignment: other.alignment,
      maxLines: other.maxLines,
      textOverflow: other.textOverflow,
      textTransform: other.textTransform,
    );
  }

  Style copyOnlyInherited(Style child) {
    FontSize? finalFontSize = FontSize.inherit(fontSize, child.fontSize);

    LineHeight? finalLineHeight = child.lineHeight != null
        ? child.lineHeight?.units == "length"
            ? LineHeight(child.lineHeight!.size! /
                (finalFontSize == null ? 14 : finalFontSize.value) *
                1.2)
            : child.lineHeight
        : lineHeight;

    return child.copyWith(
      backgroundColor: child.backgroundColor != Colors.transparent
          ? child.backgroundColor
          : backgroundColor,
      color: child.color ?? color,
      direction: child.direction ?? direction,
      display: display == Display.none ? display : child.display,
      fontFamily: child.fontFamily ?? fontFamily,
      fontFamilyFallback: child.fontFamilyFallback ?? fontFamilyFallback,
      fontFeatureSettings: child.fontFeatureSettings ?? fontFeatureSettings,
      fontSize: finalFontSize,
      fontStyle: child.fontStyle ?? fontStyle,
      fontWeight: child.fontWeight ?? fontWeight,
      lineHeight: finalLineHeight,
      letterSpacing: child.letterSpacing ?? letterSpacing,
      listStyleImage: child.listStyleImage ?? listStyleImage,
      listStyleType: child.listStyleType ?? listStyleType,
      listStylePosition: child.listStylePosition ?? listStylePosition,
      textAlign: child.textAlign ?? textAlign,
      textDecoration: TextDecoration.combine([
        child.textDecoration ?? TextDecoration.none,
        textDecoration ?? TextDecoration.none,
      ]),
      textDecorationColor: child.textDecorationColor ?? textDecorationColor,
      textDecorationThickness:
          child.textDecorationThickness ?? textDecorationThickness,
      textDecorationStyle: child.textDecorationStyle ?? textDecorationStyle,
      textShadow: child.textShadow ?? textShadow,
      whiteSpace: child.whiteSpace ?? whiteSpace,
      wordSpacing: child.wordSpacing ?? wordSpacing,
      maxLines: child.maxLines ?? maxLines,
      textOverflow: child.textOverflow ?? textOverflow,
      textTransform: child.textTransform ?? textTransform,
    );
  }

  Style copyWith({
    Color? backgroundColor,
    Color? color,
    Map<String, int?>? counterIncrement,
    Map<String, int?>? counterReset,
    TextDirection? direction,
    Display? display,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    List<FontFeature>? fontFeatureSettings,
    FontSize? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    Height? height,
    LineHeight? lineHeight,
    double? letterSpacing,
    ListStyleImage? listStyleImage,
    ListStyleType? listStyleType,
    ListStylePosition? listStylePosition,
    HtmlPaddings? padding,
    Margins? margin,
    Marker? marker,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextDecorationStyle? textDecorationStyle,
    double? textDecorationThickness,
    List<Shadow>? textShadow,
    VerticalAlign? verticalAlign,
    WhiteSpace? whiteSpace,
    Width? width,
    double? wordSpacing,
    String? before,
    String? after,
    Border? border,
    HtmlRadii? borderRadius,
    Alignment? alignment,
    Widget? markerContent,
    int? maxLines,
    TextOverflow? textOverflow,
    TextTransform? textTransform,
    bool? beforeAfterNull,
  }) {
    return Style(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
      counterIncrement: counterIncrement ?? this.counterIncrement,
      counterReset: counterReset ?? this.counterReset,
      direction: direction ?? this.direction,
      display: display ?? this.display,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontFeatureSettings: fontFeatureSettings ?? this.fontFeatureSettings,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      height: height ?? this.height,
      lineHeight: lineHeight ?? this.lineHeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      listStyleImage: listStyleImage ?? this.listStyleImage,
      listStyleType: listStyleType ?? this.listStyleType,
      listStylePosition: listStylePosition ?? this.listStylePosition,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      marker: marker ?? this.marker,
      textAlign: textAlign ?? this.textAlign,
      textDecoration: textDecoration ?? this.textDecoration,
      textDecorationColor: textDecorationColor ?? this.textDecorationColor,
      textDecorationStyle: textDecorationStyle ?? this.textDecorationStyle,
      textDecorationThickness:
          textDecorationThickness ?? this.textDecorationThickness,
      textShadow: textShadow ?? this.textShadow,
      verticalAlign: verticalAlign ?? this.verticalAlign,
      whiteSpace: whiteSpace ?? this.whiteSpace,
      width: width ?? this.width,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      before: beforeAfterNull == true ? null : before ?? this.before,
      after: beforeAfterNull == true ? null : after ?? this.after,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      alignment: alignment ?? this.alignment,
      maxLines: maxLines ?? this.maxLines,
      textOverflow: textOverflow ?? this.textOverflow,
      textTransform: textTransform ?? this.textTransform,
    );
  }

  factory Style.fromTextStyle(TextStyle textStyle) {
    return Style(
      backgroundColor: textStyle.backgroundColor,
      color: textStyle.color,
      textDecoration: textStyle.decoration,
      textDecorationColor: textStyle.decorationColor,
      textDecorationStyle: textStyle.decorationStyle,
      textDecorationThickness: textStyle.decorationThickness,
      fontFamily: textStyle.fontFamily,
      fontFamilyFallback: textStyle.fontFamilyFallback,
      fontFeatureSettings: textStyle.fontFeatures,
      fontSize:
          textStyle.fontSize != null ? FontSize(textStyle.fontSize!) : null,
      fontStyle: textStyle.fontStyle,
      fontWeight: textStyle.fontWeight,
      letterSpacing: textStyle.letterSpacing,
      textShadow: textStyle.shadows,
      wordSpacing: textStyle.wordSpacing,
      lineHeight: LineHeight(textStyle.height ?? 1.2),
    );
  }

  /// Sets any dimensions set to rem or em to the computed size
  void setRelativeValues(double remValue, double emValue) {
    final calculatedWidth = width?.calculateRelativeValue(remValue, emValue);
    if (calculatedWidth != null) {
      width = Width(calculatedWidth);
    }

    final calculatedHeight = height?.calculateRelativeValue(remValue, emValue);
    if (calculatedHeight != null) {
      height = Height(calculatedHeight);
    }

    final calculatedFontSize =
        fontSize?.calculateRelativeValue(remValue, emValue);
    if (calculatedFontSize != null) {
      fontSize = FontSize(calculatedFontSize);
    }

    margin = margin?.copyWith(
      left: margin?.left?.getRelativeValue(remValue, emValue),
      top: margin?.top?.getRelativeValue(remValue, emValue),
      right: margin?.right?.getRelativeValue(remValue, emValue),
      bottom: margin?.bottom?.getRelativeValue(remValue, emValue),
      inlineStart: margin?.inlineStart?.getRelativeValue(remValue, emValue),
      inlineEnd: margin?.inlineEnd?.getRelativeValue(remValue, emValue),
      blockStart: margin?.blockStart?.getRelativeValue(remValue, emValue),
      blockEnd: margin?.blockEnd?.getRelativeValue(remValue, emValue),
    );

    padding = padding?.copyWith(
      left: padding?.left?.getRelativeValue(remValue, emValue),
      top: padding?.top?.getRelativeValue(remValue, emValue),
      right: padding?.right?.getRelativeValue(remValue, emValue),
      bottom: padding?.bottom?.getRelativeValue(remValue, emValue),
      inlineStart: padding?.inlineStart?.getRelativeValue(remValue, emValue),
      inlineEnd: padding?.inlineEnd?.getRelativeValue(remValue, emValue),
      blockStart: padding?.blockStart?.getRelativeValue(remValue, emValue),
      blockEnd: padding?.blockEnd?.getRelativeValue(remValue, emValue),
    );

    borderRadius = borderRadius?.copyWith(
      topLeft: borderRadius?.topLeft?.getRelativeValue(remValue, emValue),
      topRight: borderRadius?.topRight?.getRelativeValue(remValue, emValue),
      bottomLeft: borderRadius?.bottomLeft?.getRelativeValue(remValue, emValue),
      bottomRight: borderRadius?.bottomRight?.getRelativeValue(remValue, emValue),
    );
  }
}

extension _MarginRelativeValues on Margin {
  Margin? getRelativeValue(double remValue, double emValue) {
    double? calculatedValue = calculateRelativeValue(remValue, emValue);
    if (calculatedValue != null) {
      return Margin(calculatedValue);
    }

    return null;
  }
}

extension _PaddingRelativeValues on HtmlPadding {
  HtmlPadding? getRelativeValue(double remValue, double emValue) {
    double? calculatedValue = calculateRelativeValue(remValue, emValue);
    if (calculatedValue != null) {
      return HtmlPadding(calculatedValue);
    }

    return null;
  }
}

extension MergeBorders on Border? {
  Border? merge(Border? other) {
    return Border(
      top: other?.top ?? this?.top ?? BorderSide.none,
      right: other?.right ?? this?.right ?? BorderSide.none,
      bottom: other?.bottom ?? this?.bottom ?? BorderSide.none,
      left: other?.left ?? this?.left ?? BorderSide.none,
    );
  }
}

extension _RadiusRelativeValues on HtmlRadius {
  HtmlRadius? getRelativeValue(double remValue, double emValue) {
    double? calculatedValue = calculateRelativeValue(remValue, emValue);
    if (calculatedValue != null) {
      return HtmlRadius(calculatedValue);
    }

    return null;
  }
}

enum ListStyleType {
  arabicIndic('arabic-indic'),
  armenian('armenian'),
  lowerArmenian('lower-armenian'),
  upperArmenian('upper-armenian'),
  bengali('bengali'),
  cambodian('cambodian'),
  khmer('khmer'),
  circle('circle'),
  cjkDecimal('cjk-decimal'),
  cjkEarthlyBranch('cjk-earthly-branch'),
  cjkHeavenlyStem('cjk-heavenly-stem'),
  cjkIdeographic('cjk-ideographic'),
  decimal('decimal'),
  decimalLeadingZero('decimal-leading-zero'),
  devanagari('devanagari'),
  disc('disc'),
  disclosureClosed('disclosure-closed'),
  disclosureOpen('disclosure-open'),
  ethiopicNumeric('ethiopic-numeric'),
  georgian('georgian'),
  gujarati('gujarati'),
  gurmukhi('gurmukhi'),
  hebrew('hebrew'),
  hiragana('hiragana'),
  hiraganaIroha('hiragana-iroha'),
  japaneseFormal('japanese-formal'),
  japaneseInformal('japanese-informal'),
  kannada('kannada'),
  katakana('katakana'),
  katakanaIroha('katakana-iroha'),
  koreanHangulFormal('korean-hangul-formal'),
  koreanHanjaInformal('korean-hanja-informal'),
  koreanHanjaFormal('korean-hanja-formal'),
  lao('lao'),
  lowerAlpha('lower-alpha'),
  lowerGreek('lower-greek'),
  lowerLatin('lower-latin'),
  lowerRoman('lower-roman'),
  malayalam('malayalam'),
  mongolian('mongolian'),
  myanmar('myanmar'),
  none('none'),
  oriya('oriya'),
  persian('persian'),
  simpChineseFormal('simp-chinese-formal'),
  simpChineseInformal('simp-chinese-informal'),
  square('square'),
  tamil('tamil'),
  telugu('telugu'),
  thai('thai'),
  tibetan('tibetan'),
  tradChineseFormal('trad-chinese-formal'),
  tradChineseInformal('trad-chinese-informal'),
  upperAlpha('upper-alpha'),
  upperLatin('upper-latin'),
  upperRoman('upper-roman');

  final String counterStyle;

  const ListStyleType(this.counterStyle);

  factory ListStyleType.fromName(String name) {
    return ListStyleType.values.firstWhere((value) {
      return name == value.counterStyle;
    }, orElse: () => ListStyleType.disc);
  }
}

class ListStyleImage {
  final String uriText;

  const ListStyleImage(this.uriText);
}

enum ListStylePosition {
  outside,
  inside,
}

enum TextTransform {
  uppercase,
  lowercase,
  capitalize,
  none,
}

enum VerticalAlign {
  baseline,
  sub,
  sup,
  top,
  bottom,
  middle;

  /// Converts this [VerticalAlign] to a [PlaceholderAlignment] given the
  /// [Display] type of the current context
  PlaceholderAlignment toPlaceholderAlignment(Display? display) {
    // vertical-align only applies to inline context elements.
    // If we aren't in such a context, use the default 'bottom' alignment.
    // Also note that the default display, if it is not set, is inline, so we
    // treat null `display` values as if they were inline by default.
    if (display != Display.inline &&
        display != Display.inlineBlock &&
        display != null) {
      return PlaceholderAlignment.bottom;
    }

    switch (this) {
      case VerticalAlign.baseline:
      case VerticalAlign.sub:
      case VerticalAlign.sup:
        return PlaceholderAlignment.baseline;
      case VerticalAlign.top:
        return PlaceholderAlignment.top;
      case VerticalAlign.bottom:
        return PlaceholderAlignment.bottom;
      case VerticalAlign.middle:
        return PlaceholderAlignment.middle;
    }
  }
}

enum WhiteSpace {
  normal,
  pre,
}
