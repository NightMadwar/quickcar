part of 'booking_bloc.dart';

abstract class BookingEvent extends Equatable {
  const BookingEvent();

  @override
  List<Object?> get props => [];
}

class SubmitBooking extends BookingEvent {
  final Booking booking;

  SubmitBooking({required this.booking});

  @override
  List<Object?> get props => [booking];
}
