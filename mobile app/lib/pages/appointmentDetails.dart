import 'package:flutter/material.dart';
import 'package:hms/myWidgets.dart';

class AppointmentDetailsPage extends StatelessWidget {
  final Map<String, dynamic> appointment;

  AppointmentDetailsPage(this.appointment);
  @override
  Widget build(BuildContext context) {
    return Page(
      title: "Appointment",
      body: Center(
        child: ListView.builder(
          itemCount: appointment.length,
          itemBuilder: (context, int i) {
            var keys = appointment.keys.toList();
            var values = appointment.values.toList();
            return Text("${keys[i]}: ${values[i]}");
          },
        ),
      ),
    );
  }
}
