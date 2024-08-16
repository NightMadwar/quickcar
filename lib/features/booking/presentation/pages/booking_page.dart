import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/booking_bloc.dart';
import '../widgets/booking_form.dart';
import '../../../../injection_container.dart';

class BookingPage extends StatelessWidget {
  final String vehicleId;

  BookingPage({required this.vehicleId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Booking")),
      body: BlocProvider(
        create: (_) => sl<BookingBloc>(),
        child: BookingForm(vehicleId: vehicleId),
      ),
    );
  }
}
