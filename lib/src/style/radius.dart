import 'package:flutter/material.dart';
import 'package:flutter_html/src/style/length.dart';

class HtmlRadius extends LengthOrPercent {
  HtmlRadius(double value, [Unit? unit = Unit.px])
      : assert(value >= 0, "Radius must be non-negative"),
        super(value, unit ?? Unit.px);

  HtmlRadius.zero() : super(0, Unit.px);

  @override
  int get hashCode => Object.hash(value, unit);

  @override
  bool operator ==(Object other) {
    return other is HtmlRadius && other.value == value && other.unit == unit;
  }
}

class HtmlRadii {
  final HtmlRadius? topLeft;
  final HtmlRadius? topRight;
  final HtmlRadius? bottomLeft;
  final HtmlRadius? bottomRight;

  const HtmlRadii({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  /// 类似 EdgeInsets.zero
  static HtmlRadii get zero => HtmlRadii.all(0);

  /// 类似 EdgeInsets.all
  HtmlRadii.all(double value, [Unit? unit])
      : topLeft = HtmlRadius(value, unit),
        topRight = HtmlRadius(value, unit),
        bottomLeft = HtmlRadius(value, unit),
        bottomRight = HtmlRadius(value, unit);

  /// 类似 EdgeInsets.only
  HtmlRadii.only({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
    Unit? unit,
  })  : topLeft = topLeft != null ? HtmlRadius(topLeft, unit) : null,
        topRight = topRight != null ? HtmlRadius(topRight, unit) : null,
        bottomLeft = bottomLeft != null ? HtmlRadius(bottomLeft, unit) : null,
        bottomRight = bottomRight != null ? HtmlRadius(bottomRight, unit) : null;

  HtmlRadii copyWith({
    HtmlRadius? topLeft,
    HtmlRadius? topRight,
    HtmlRadius? bottomLeft,
    HtmlRadius? bottomRight,
  }) {
    return HtmlRadii(
      topLeft: topLeft ?? this.topLeft,
      topRight: topRight ?? this.topRight,
      bottomLeft: bottomLeft ?? this.bottomLeft,
      bottomRight: bottomRight ?? this.bottomRight,
    );
  }

  @override
  int get hashCode =>
      Object.hash(topLeft, topRight, bottomLeft, bottomRight);

  @override
  bool operator ==(Object other) {
    return other is HtmlRadii &&
        topLeft == other.topLeft &&
        topRight == other.topRight &&
        bottomLeft == other.bottomLeft &&
        bottomRight == other.bottomRight;
  }

  BorderRadius toBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft?.value ?? 0),
      topRight: Radius.circular(topRight?.value ?? 0),
      bottomLeft: Radius.circular(bottomLeft?.value ?? 0),
      bottomRight: Radius.circular(bottomRight?.value ?? 0),
    );
  }
}
