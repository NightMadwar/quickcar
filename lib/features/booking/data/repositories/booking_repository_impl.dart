import 'package:dartz/dartz.dart';
import 'package:quickcar/features/booking/data/models/booking_model.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/booking.dart';
import '../../domain/repositories/booking_repository.dart';
import '../data_providers/booking_remote_data_source.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource remoteDataSource;

  BookingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Booking>> createBooking(Booking booking) async {
    try {
      final bookingModel = BookingModel(
        id: booking.id,
        vehicleId: booking.vehicleId,
        startDate: booking.startDate,
        endDate: booking.endDate,
      );
      final result = await remoteDataSource.createBooking(bookingModel);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
