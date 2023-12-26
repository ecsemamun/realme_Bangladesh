// ignore_for_file: file_names

class PriceModel {
  final String salePrice;
  final String fullPrice;


  PriceModel({

    required this.salePrice,
    required this.fullPrice,

  });

  Map<String, dynamic> toMap() {
    return {

      'salePrice': salePrice,
      'fullPrice': fullPrice,

    };
  }

  factory PriceModel.fromMap(Map<String, dynamic> json) {
    return PriceModel(

      salePrice: json['salePrice'],
      fullPrice: json['fullPrice'],

    );
  }
}
