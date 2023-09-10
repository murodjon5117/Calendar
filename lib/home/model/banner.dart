import 'package:equatable/equatable.dart';

class BannerModel extends Equatable {
  final int id;
  final String imageUrl;

  const BannerModel({required this.id, required this.imageUrl});

  @override
  List<Object?> get props => [id, imageUrl];

}
