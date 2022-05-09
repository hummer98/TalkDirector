import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talk_director/widgets/text_widgets.dart';
import '../models/talk_theme.dart';
import 'dart:math' as math;

class TalkThemeNotifier extends ChangeNotifier {
  int? talkThemeIndex;

  static const List<String> _talkThemes = [
    '最近買ってよかったもの',
    '最近失敗した買い物',
    '旅行に行ってみたい場所',
    '嫌いな食べ物',
    '最近の初体験',
    'ストレス解消法',
    '異性の体のどこが好き？',
    '結婚の最低条件',
    '彼氏と結婚相手の条件の違い',
    '彼氏に希望する年収',
  ];

  String get talkTheme => talkThemeIndex == null ? '' : _talkThemes[talkThemeIndex!];

  void change() {
    final random = math.Random();
    final current = talkThemeIndex;
    do {
      talkThemeIndex = random.nextInt(_talkThemes.length);
    } while (current == talkThemeIndex);
    notifyListeners();
  }
}

final talkThemeProvider = ChangeNotifierProvider((_) => TalkThemeNotifier());

final tts = FlutterTts();

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(talkThemeProvider);
    return Column(
      children: [
        const Headline1('トークテーマ ガチャ'),
        Flexible(child: Text('${provider.talkTheme}')),
        OutlinedButton(
          onPressed: () {
            ref.read(talkThemeProvider).change();
          },
          child: const Text(
            'ガチャを回す',
          ),
        ),
        OutlinedButton(
          onPressed: () async {
            final text = provider.talkTheme;
            await FlutterClipboard.copy(text);
            await tts.speak(text);
          },
          child: const Text('読み上げる'),
        )
      ],
    );
  }
}
