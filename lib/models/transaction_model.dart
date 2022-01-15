import 'package:equatable/equatable.dart';
import 'package:flutterapp_airplane/models/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  late final DestinationModel destination;
  late final int amountOfTraveler;
  late final String selectedSeats;
  late final bool insurance;
  late final bool refundable;
  late final double vat;
  late final int price;
  late final int grandTotal;

  TransactionModel({
    this.id = '',
    required this.destination,
    this.amountOfTraveler = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        id: id,
        amountOfTraveler: json['amountOfTraveler'],
        selectedSeats: json['selectedSeats'],
        insurance: json['insurance'],
        refundable: json['refundable'],
        vat: json['vat'],
        price: json['price'],
        grandTotal: json['grandTotal'],
      );

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selectedSeats,
        insurance,
        refundable,
        vat,
        price,
        grandTotal
      ];
}
