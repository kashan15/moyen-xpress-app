import 'package:flutter/material.dart';


/// First API Running
// class OpenseaModel {
//   bool? result;
//   String? message;
//   List<Assets>? homeData;
//   // List<Assets2>? homeData2;
//   // List<Assets3>? homeData3;
//
//   OpenseaModel({
//     this.result,
//     this.message,
//     this.homeData
//   });
//
//   factory OpenseaModel.fromJson(Map<String, dynamic> json) {
//     // var productDataJson = json['data']['flash_deals'] as List<dynamic>;
//     var productDataJson = json['data']['daily_deals']as List<dynamic>;
//     List<Assets> productData = productDataJson.map((dealJson) => Assets.fromJson(dealJson)).toList();
//
//     return OpenseaModel(
//       result: json['result'],
//       message: json['message'],
//       homeData: productData,
//     );
//   }
// }
//
// class Assets {
//   int? id;
//   String? name;
//   String? tags;
//
//   Assets({
//     this.id,
//     this.name,
//     this.tags,
//   });
//
//   factory Assets.fromJson(Map<String, dynamic> json) {
//     return Assets(
//         id: json['id'],
//         name: json['name'],
//         tags: json['tags']
//     );
//   }
// }


class OpenseaModel {
  bool? result;
  String? message;
  ApiData? homeData;

  OpenseaModel({
    this.result,
    this.message,
    this.homeData
  });

  factory OpenseaModel.fromJson(Map<String, dynamic> json) {
    // var productDataJson = json['data'] as List<dynamic>;
    // List<ApiData> productData = productDataJson.map((dealJson) => ApiData.fromJson(dealJson)).toList();

    return OpenseaModel(
      result: json['result'] ?? false,
      message: json['message'] ?? "",
      homeData:  ApiData.fromJson(json['data'] ?? {}),
      //homeData:  productDataJson.map((dealJson) => ApiData.fromJson(dealJson)).toList();
      //homeData: productData,
    );
  }
}

class ApiData{
   List<FlashDeals>? flashDeals;
   List<DailyDeals>? dailyDeals;
   List<NewArrivals>? newArrivals;
   List<TopSellers>? topSellers;
   List<TopBrands>? topBrands;

  ApiData({
    this.flashDeals,
    this.dailyDeals,
    this.newArrivals,
    this.topSellers,
    this.topBrands
});

   factory ApiData.fromJson(Map<String, dynamic> json) {
     return ApiData(
       flashDeals: (json['flash_deals'] as List<dynamic> ?? []).map((item) => FlashDeals.fromJson(item)).toList(),
       dailyDeals: (json['daily_deals'] as List<dynamic> ?? []).map((item) => DailyDeals.fromJson(item)).toList(),
       newArrivals: (json['new_arrivals'] as List<dynamic> ?? []).map((item) => NewArrivals.fromJson(item)).toList(),
       topSellers: (json['top_sellers'] as List<dynamic> ?? []).map((item) => TopSellers.fromJson(item)).toList(),
       topBrands: (json['top_brands'] as List<dynamic> ?? []).map((item) => TopBrands.fromJson(item)).toList(),

     );
   }

}


class FlashDeals {
  int? id;
  // String? name;
  // String? tags;

  FlashDeals({
    this.id,
    // this.name,
    // this.tags,
  });

  factory FlashDeals.fromJson(Map<String, dynamic> json) {
    return FlashDeals(
        id: json['id'],
        // name: json['name'],
        // tags: json['tags']
    );
  }
}

class DailyDeals {
  int? id;
  String? name;
  // String? tags;
  String? thumbnailImg;

  DailyDeals({
    this.id,
    this.name,
    // this.tags,
    this.thumbnailImg

  });

  factory DailyDeals.fromJson(Map<String, dynamic> json) {
    return DailyDeals(
        id: json['id'],
        name: json['name'],
        // tags: json['tags']
        thumbnailImg: json['thumbnail_img']
    );
  }
}

class NewArrivals {
  int? id;
  String? name;
  // String? tags;

  NewArrivals({
    this.id,
    this.name,
    // this.tags,
  });

  factory NewArrivals.fromJson(Map<String, dynamic> json) {
    return NewArrivals(
        id: json['id'],
        name: json['name'],
        // tags: json['tags']
    );
  }
}

class TopSellers {
  int? id;
  String? name;
  // String? tags;

  TopSellers({
    this.id,
    this.name,
    // this.tags,
  });

  factory TopSellers.fromJson(Map<String, dynamic> json) {
    return TopSellers(
      id: json['id'],
      name: json['name'],
      // tags: json['tags']
    );
  }
}

class TopBrands {
  int? id;
  String? name;
  // String? tags;

  TopBrands({
    this.id,
    this.name,
    // this.tags,
  });

  factory TopBrands.fromJson(Map<String, dynamic> json) {
    return TopBrands(
      id: json['id'],
      name: json['name'],
      // tags: json['tags']
    );
  }
}