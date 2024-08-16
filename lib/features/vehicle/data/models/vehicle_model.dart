import '../../domain/entities/vehicle.dart';

class VehicleModel extends Vehicle {
  VehicleModel(
      {required String id, required String name, required String imageUrl})
      : super(id: id, name: name, imageUrl: imageUrl);

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
    };
  }
}
