import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickcar/features/booking/presentation/pages/booking_page.dart';
import '../blocs/vehicle_bloc.dart';
// import '../../booking/presentation/pages/booking_page.dart';

class VehicleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VehicleBloc, VehicleState>(
      builder: (context, state) {
        if (state is VehicleLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is VehicleError) {
          return Center(child: Text(state.message));
        } else if (state is VehicleLoaded) {
          return ListView.builder(
            itemCount: state.vehicles.length,
            itemBuilder: (context, index) {
              final vehicle = state.vehicles[index];
              return ListTile(
                leading: Image.network(
                  vehicle.imageUrl,
                  errorBuilder: (context, error, stackTrace) {
                    return FlutterLogo(); // Fallback image
                  },
                ),
                title: Text(vehicle.name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingPage(vehicleId: vehicle.id),
                    ),
                  );
                },
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
