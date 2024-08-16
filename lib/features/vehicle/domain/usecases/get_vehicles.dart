import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/vehicle.dart';
import '../repositories/vehicle_repository.dart';

class GetVehicles {
  final VehicleRepository repository;

  GetVehicles(this.repository);

  Future<Either<Failure, List<Vehicle>>> call() async {
    return await repository.getVehicles();
  }
}
