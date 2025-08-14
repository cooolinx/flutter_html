import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class _DetailsWidget extends StatefulWidget {
  final Map<StyledElement, InlineSpan> childList;
  final Iterable<InlineSpan> children;
  final Style style;

  const _DetailsWidget({
    super.key,
    required this.childList,
    required this.children,
    required this.style,
  });

  @override
  State<_DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<_DetailsWidget> {
  bool isExpanded = false;

  Style get styleWithTextOnly => Style(
    color: widget.style.color,
    fontSize: widget.style.fontSize,
    fontWeight: widget.style.fontWeight,
    fontStyle: widget.style.fontStyle,
  );

  EdgeInsets get margin => EdgeInsets.only(
    left: widget.style.margin?.left?.value ?? 0,
    right: widget.style.margin?.right?.value ?? 0,
    top: widget.style.margin?.top?.value ?? 0,
    bottom: widget.style.margin?.bottom?.value ?? 0,
  );

  @override
  Widget build(BuildContext context) {
    if (!isExpanded) {
      return Container(
        margin: margin,
        width: double.infinity,
        child: _buildToggle(),
      );
    }

    final direction = widget.style.direction ?? Directionality.maybeOf(context);
    final padding = widget.style.padding?.resolve(direction!);

    return Container(
      width: double.infinity,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: widget.style.backgroundColor,
        borderRadius: widget.style.borderRadius?.toBorderRadius() ?? BorderRadius.zero,
        border: widget.style.border,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildToggle(),
          SizedBox(height: widget.style.padding?.top?.value ?? 0),
          if (isExpanded) CssBoxWidget.withInlineSpanChildren(
            children: widget.childList.keys.isNotEmpty &&
                    widget.childList.keys.first.name == "summary"
                ? widget.children.skip(1).toList()
                : widget.children.toList(),
            style: styleWithTextOnly,
          ),
        ],
      ),
    );
  }

  Widget _buildToggle() {
    String? text;
    if (widget.childList.keys.isNotEmpty && widget.childList.keys.first.name == "summary") {
      // Extract plain text from inline span to avoid occupying whole row width
      text = _extractTextFromInlineSpan(widget.children.first);
    }
    final title = Text(
      text ?? "Details",
      // Keep only text styles because the rest of the styles are applied to the container
      style: styleWithTextOnly.generateTextStyle(),
    );
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          title,
          SizedBox(width: (widget.style.padding?.left?.value ?? 0) * 0.5),
          AnimatedRotation(
            turns: isExpanded ? 0.5 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: widget.style.fontSize?.value,
              color: widget.style.color,
            ),
          ),
        ],
      ),
    );
  }

  String? _extractTextFromInlineSpan(InlineSpan inlineSpan) {
    if (inlineSpan is! WidgetSpan || inlineSpan.child is! CssBoxWidget) return null;
    final cssBox = inlineSpan.child as CssBoxWidget;
    if (cssBox.child is! Text) return null;
    final textWidget = cssBox.child as Text;
    if (textWidget.textSpan == null) return null;
    final span = textWidget.textSpan!;
    if (span is! TextSpan) return null;
    return span.toPlainText();
  }
}

/// The [DetailsElementBuiltIn] handles the default rendering for the
/// `<details>` html tag
class DetailsElementBuiltIn extends HtmlExtension {
  const DetailsElementBuiltIn();

  @override
  Set<String> get supportedTags => {
    "details",
  };

  @override
  StyledElement prepare(
      ExtensionContext context, List<StyledElement> children) {
    return StyledElement(
      name: context.elementName,
      elementId: context.id,
      elementClasses: context.classes.toList(),
      children: children,
      style: Style(),
      node: context.node,
    );
  }

    @override
  InlineSpan build(ExtensionContext context) {
    final childList = context.builtChildrenMap!;
    final children = childList.values;

    return WidgetSpan(
      child: _DetailsWidget(
        key: AnchorKey.of(context.parser.key, context.styledElement!),
        childList: childList,
        children: children,
        style: context.styledElement!.style,
      ),
    );
  }
}
