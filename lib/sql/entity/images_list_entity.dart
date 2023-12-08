import 'package:floor/floor.dart';

@entity
class ImagesListEntity {
  @PrimaryKey(autoGenerate: false)
  final String id;
  final String imageUrl;
  final bool isSelected;

  ImagesListEntity({
    required this.id,
    required this.imageUrl,
    required this.isSelected,
  });

  factory ImagesListEntity.fromJson(Map<String, dynamic> json) => ImagesListEntity(
      id: json["id"],
      imageUrl: json['imageUrl'],
    isSelected: json['isSelected'],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "imageUrl": imageUrl,
    "isSelected": isSelected,
  };
}
