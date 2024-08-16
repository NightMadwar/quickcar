import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/booking.dart';
import '../repositories/booking_repository.dart';

class CreateBooking {
  final BookingRepository repository;

  CreateBooking(this.repository);

  Future<Either<Failure, Booking>> call(BookingParams params) async {
    return await repository.createBooking(params.booking);
  }
}

class BookingParams {
  final Booking booking;

  BookingParams({required this.booking});
}
