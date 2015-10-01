import 'block_parser.dart';
import 'inline_parser.dart';

class ExtensionSet {
  static ExtensionSet none = new ExtensionSet._([], []);

  static ExtensionSet commonMark = new ExtensionSet._(
      [const FencedCodeBlockSyntax()], [new InlineHtmlSyntax()]);

  static ExtensionSet pandoc = new ExtensionSet._([
    const FencedCodeBlockSyntax(),
    const HeaderWithIdSyntax(),
    const SetextHeaderWithIdSyntax(),
  ], [
    new InlineHtmlSyntax()
  ]);

  final List blockSyntaxes;
  final List inlineSyntaxes;

  ExtensionSet._(this.blockSyntaxes, this.inlineSyntaxes);
}
