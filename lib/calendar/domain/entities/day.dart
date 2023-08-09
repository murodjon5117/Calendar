
import 'package:equatable/equatable.dart';

class Day extends Equatable {
  final int day;
  final int type;

  const Day({
    required this.day,
    required this.type,
  });

  @override
  List<Object?> get props => [
        day,
        type,
      ];
}
