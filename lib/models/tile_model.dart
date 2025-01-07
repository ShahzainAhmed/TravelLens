import 'package:flutter/material.dart';
import 'package:motorbike_app/resources/app_assets.dart';
import 'package:motorbike_app/resources/app_colors.dart';

class ProductTileModel {
  final String rating;
  final String price;
  final String name;
  final String image;
  final String description;
  final String manufacturer;
  final String engine;
  final Color color;

  ProductTileModel({
    required this.rating,
    required this.price,
    required this.name,
    required this.image,
    required this.description,
    required this.manufacturer,
    required this.engine,
    required this.color,
  });
}

List tileModelList = [
  ProductTileModel(
    rating: "4.5",
    color: AppColors.kBlueColor,
    price: "466,000",
    name: "YBR 125",
    image: AppAssets.kBike1,
    engine: "125 cc",
    manufacturer: "Yamaha",
    description:
        "YBR 125 is a light motorcycle manufactured by the Japanese manufacturer Yamaha Motor Co. Ltd. It was introduced in 2005 and received several facelifts over time. In 2008, Yamaha replaced the carburetor system in the YBR 125 with a fuel injection system. In 2010, Yamaha introduced a dual-sport version of the YBR 125 with several off-road improvements. YBR 125 was launched in the Pakistani market in 2015. \n\nYamaha YBR 125 is a pioneer of quality sports bikes in Pakistan. With a splendid performance, sporty shape, and a first-class impression, Yamaha YBR 125 simply has no match in the local market. Features like self-start, alloy rims, speedometer with fuel gauge indicator, and an ultra-bright headlight, Yamaha YBR 125 is worth every penny.",
  ),
  ProductTileModel(
    rating: "4.0",
    color: const Color(0xffb74947),
    price: "282,900",
    name: "CG 125 S",
    manufacturer: "Honda",
    engine: "125 cc",
    image: AppAssets.kBike2,
    description:
        "Honda CG 125 S Specs Honda CG 125 S 2025 has a 4 Stroke 125cc OHV Air Cooled engine with a bore and stroke of 56.5 x 49.5 mm respectively. The displacement of the engine is 124.1 cm3. The bike comes with a fuel capacity of 9.2 Liters (Reserve: 2 Liters) and has a 5-speed constant mesh transmission. \n\nThe wheelbase of the Honda CG 125 S 2025 is 1212 mm with a dry weight of 108 kg. At a height of 765 mm, the bike’s seat is easy to mount by people of short height as well. The motorbike has a ground clearance of 133 mm which keeps it stable.",
  ),
  ProductTileModel(
    rating: "4.4",
    color: const Color(0xffffc300),
    price: "485,000",
    name: "YBR 125G",
    image: AppAssets.kBike4,
    engine: "125 cc",
    manufacturer: "Yamaha",
    description:
        "Yamaha presents a wholesome new experience of biking with its new YBR 125G. The YBR 125G is intelligently designed keeping into account the true taste of passionate bikers. Yamaha YBR 125G has an overall look of a trail bike. It possesses the same engine as that of Yamaha YBR 125. Yamaha YBR 125G has powerful shocks that are the key to this bike. The alluring speedometer has a gear indicator and fuel indicator. \n\nThe significantly broad and comfortable seat of Yamaha YBR 125G ensures good backbone support on long journeys. Alloy rims, self-start mechanism, and sporty body shape with dynamic graphics and Yamaha logo force its buyers to boast proudly of their appealing ride.",
  ),
  ProductTileModel(
    rating: "4.9",
    color: const Color(0xff2357a1),
    price: "12,600,000",
    name: "S1000RR",
    image: AppAssets.kBike3,
    manufacturer: "BMW",
    description:
        "BMW Motorrad is the motorcycle manufacturing brand and division of German automobile manufacturer BMW. This company manufactured its first motorcycle in 1923. It’s a sport-oriented motorcycle made by BMW Motorrad to compete in the Superbike World Championship in 2009. It sold 136,963 vehicles in 2015. However, its actual production started in 2008. It was powered by a 999cc displacement operated at 14,200 rpm. The commercial production of the bike began in 2010.",
    engine: "999 cc",
  ),
  ProductTileModel(
    rating: "4.7",
    color: const Color(0xff2357a1),
    price: "1,700,000",
    name: "MT 15",
    image: AppAssets.kOnboarding,
    manufacturer: "MT 15",
    description:
        "BMW Motorrad is the motorcycle manufacturing brand and division of German automobile manufacturer BMW. This company manufactured its first motorcycle in 1923. It’s a sport-oriented motorcycle made by BMW Motorrad to compete in the Superbike World Championship in 2009. It sold 136,963 vehicles in 2015. However, its actual production started in 2008. It was powered by a 999cc displacement operated at 14,200 rpm. The commercial production of the bike began in 2010.",
    engine: "859 cc",
  ),
  ProductTileModel(
    rating: "4.3",
    color: const Color(0xff2357a1),
    price: "600,000",
    name: "MT 15",
    image: AppAssets.kBike,
    manufacturer: "MT 15",
    description:
        "BMW Motorrad is the motorcycle manufacturing brand and division of German automobile manufacturer BMW. This company manufactured its first motorcycle in 1923. It’s a sport-oriented motorcycle made by BMW Motorrad to compete in the Superbike World Championship in 2009. It sold 136,963 vehicles in 2015. However, its actual production started in 2008. It was powered by a 999cc displacement operated at 14,200 rpm. The commercial production of the bike began in 2010.",
    engine: "859 cc",
  ),
];
