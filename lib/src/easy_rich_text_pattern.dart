import 'package:flutter/widgets.dart';

typedef EasyRichTextMatchBuilder = InlineSpan Function(
    BuildContext context, RegExpMatch? match);
typedef EasyPattern = EasyRichTextPattern;

class EasyRichTextPattern {
  ///target string that you want to format
  final dynamic targetString;

  ///string before target string.
  ///useful when you want to format text after specified words
  final String stringBeforeTarget;

  ///string after target string.
  ///useful when you want to format text before specified words
  final String stringAfterTarget;

  //Apply Word Boundaries in RegExp. The default value is true.
  ///when all values are set to true. matchLeftWordBoundary and matchRightWordBoundary has higher priority than matchWordBoundaries.
  final bool matchWordBoundaries;

  ///Apply only left Word Boundary in RegExp. The default value is false.
  /// It Will be set to false when matchWordBoundaries is true.
  ////when all values are set to true. matchLeftWordBoundary has higher priority than matchWordBoundaries and matchRightWordBoundary.
  final bool matchLeftWordBoundary;

  ///Apply only left Word Boundary in RegExp. The default value is false.
  ///It Will be set to false when matchWordBoundaries or matchLeftWordBoundary is true.
  ////when all values are set to true. matchRightWordBoundary have higher priority than matchWordBoundaries but lower priority than matchLeftWordBoundary.
  final bool matchRightWordBoundary;

  ///convert targetString to superScript
  ///superscript has higher priority than subscript
  final bool superScript;

  ///convert targetString to subscript
  final bool subScript;

  ///Style of target text
  final TextStyle? style;

  ///apply url_launcher, support email, website, and telephone
  final String? urlType;

  ///GestureRecognizer
  final Function(String)? recognizerOnTap;

  ///set true if the targetString contains specified characters \[]()^*+?.$-{}|!
  final bool hasSpecialCharacters;

  ///match first, last, or all [0, 1, 'last']
  ///default match all
  final dynamic matchOption;

  ///replace text by pattern
  final EasyRichTextMatchBuilder? matchBuilder;

  ///InlineSpan widget before targetStriing
  final InlineSpan? prefixInlineSpan;

  ///InlineSpan widget after targetStriing
  final InlineSpan? suffixInlineSpan;

  EasyRichTextPattern(
      {required this.targetString,
      this.stringBeforeTarget = '',
      this.stringAfterTarget = '',
      this.matchWordBoundaries = true,
      this.matchLeftWordBoundary = true,
      this.matchRightWordBoundary = true,
      this.superScript = false,
      this.subScript = false,
      this.style,
      this.urlType,
      this.recognizerOnTap,
      this.hasSpecialCharacters = false,
      this.matchOption = 'all',
      this.matchBuilder,
      this.prefixInlineSpan,
      this.suffixInlineSpan});

  EasyRichTextPattern copyWith({
    targetString,
    stringBeforeTarget,
    stringAfterTarget,
    matchWordBoundaries,
    matchLeftWordBoundary,
    matchRightWordBoundary,
    superScript,
    subScript,
    style,
    urlType,
    recognizerOnTap,
    hasSpecialCharacters,
    matchOption,
    matchBuilder,
    prefixInlineSpan,
    suffixInlineSpan,
  }) {
    return EasyRichTextPattern(
      targetString: targetString ?? this.targetString,
      stringBeforeTarget: stringBeforeTarget ?? this.stringBeforeTarget,
      stringAfterTarget: stringAfterTarget ?? this.stringAfterTarget,
      matchWordBoundaries: matchWordBoundaries ?? this.matchWordBoundaries,
      matchLeftWordBoundary:
          matchLeftWordBoundary ?? this.matchLeftWordBoundary,
      matchRightWordBoundary:
          matchRightWordBoundary ?? this.matchRightWordBoundary,
      superScript: superScript ?? this.superScript,
      subScript: subScript ?? this.subScript,
      style: style ?? this.style,
      urlType: urlType ?? this.urlType,
      recognizerOnTap: recognizerOnTap ?? this.recognizerOnTap,
      hasSpecialCharacters: hasSpecialCharacters ?? this.hasSpecialCharacters,
      matchOption: matchOption ?? this.matchOption,
      matchBuilder: matchBuilder ?? this.matchBuilder,
      prefixInlineSpan: prefixInlineSpan ?? this.prefixInlineSpan,
      suffixInlineSpan: suffixInlineSpan ?? this.suffixInlineSpan,
    );
  }
}
