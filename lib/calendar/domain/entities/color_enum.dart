import 'package:equatable/equatable.dart';

class ColorEnum extends Equatable {
  final int type;
  final String color;

  const ColorEnum({
    required this.type,
    required this.color,
  });

  @override
  List<Object?> get props => [
        type,
        color,
      ];
}
