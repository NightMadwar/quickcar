import '../../domain/entities/booking.dart';

class BookingModel extends Booking {
  BookingModel({
    required String id,
    required String vehicleId,
    required DateTime startDate,
    required DateTime endDate,
  }) : super(
            id: id,
            vehicleId: vehicleId,
            startDate: startDate,
            endDate: endDate);

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      id: json['id'],
      vehicleId: json['vehicleId'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'vehicleId': vehicleId,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
    };
  }
}
