import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/vehicle.dart';

abstract class VehicleRepository {
  Future<Either<Failure, List<Vehicle>>> getVehicles();
}
