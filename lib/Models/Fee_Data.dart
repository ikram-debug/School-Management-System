import 'package:flutter/material.dart';

class Feedata{
  final String Month;
  final String Paymentdate;
  final String Amount;
  final String Paid;
  final String remaining;
  final String buttonStatus;

  Feedata(
      this.Month,
      this.Paymentdate,
      this.Amount,
      this.Paid,
      this.remaining,
      this.buttonStatus,
      );
}

List<Feedata> fee = [
  Feedata("December", "05-12-2025", "4000", "1400", "2600","Pay Now"),
  Feedata("November", "07-11-2025", "4000", '2000', '2000',"Pay Now"),
  Feedata("October", "07-11-2025", "4000", '1500', '2500',"Pay Now"),
  Feedata("September", "07-11-2025", "4000", '1350', '2650',"Pay Now"),
  Feedata("August", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("July", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("June", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("May", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("April", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("March", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("February", "07-11-2025", "4000", '4000', '0',"Download"),
  Feedata("January", "07-11-2025", "4000", '4000', '0',"Download"),
];