// ignore_for_file: cascade_invocations

import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pinball_components/pinball_components.dart';

import '../../helpers/helpers.dart';

void main() {
  group('DinoWalls', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    final flameTester = FlameTester(TestGame.new);

    flameTester.test(
      'loads correctly',
      (game) async {
        final dinoWalls = DinoWalls(position: Vector2.zero());
        await game.addFromBlueprint(dinoWalls);
        await game.ready();

        for (final wall in dinoWalls.components) {
          expect(game.contains(wall), isTrue);
        }
      },
    );
  });
}
