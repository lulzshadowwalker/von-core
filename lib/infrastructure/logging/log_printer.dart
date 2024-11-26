import 'package:logger/logger.dart';

class VonLogPrinter extends PrettyPrinter {
  VonLogPrinter(this.className);

  final String className;

  @override
  List<String> log(LogEvent event) {
    final levelEmojis = <Level, String>{
      Level.info: '💁🏻‍♀️',
      Level.trace: '🫣😶‍🌫️',
      Level.error: '🤬',
      Level.warning: '🚧',
      Level.fatal: '🤦🏼‍♀️',
      Level.debug: '🐞',
    };

    final emoji = levelEmojis[event.level];

    return [('$emoji $className | ${event.message}')];
  }
}
