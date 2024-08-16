import 'package:equatable/equatable.dart';

class Booking extends Equatable {
  final String id;
  final String vehicleId;
  final DateTime startDate;
  final DateTime endDate;

  Booking({
    required this.id,
    required this.vehicleId,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [id, vehicleId, startDate, endDate];
}
