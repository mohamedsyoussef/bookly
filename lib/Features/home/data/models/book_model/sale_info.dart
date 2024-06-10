import 'package:equatable/equatable.dart';

class Price extends Equatable {
  final String? currencyCode;
  final num? amount;

  const Price({this.currencyCode, this.amount});
  factory Price.fromJson(Map<String, dynamic> json) => Price(
        currencyCode: json['currencyCode'] as String?,
        amount: json['amount'] as num?,
      );

  @override
  List<Object?> get props => [currencyCode, amount];
}

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final Price? listPrice;
  const SaleInfo(
      {this.country, this.saleability, this.isEbook, this.listPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        listPrice: json['listPrice'] == null
            ? null
            : Price.fromJson(json['listPrice'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
      };

  @override
  List<Object?> get props => [country, saleability, isEbook];
}
