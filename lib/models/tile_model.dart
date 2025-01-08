import 'package:travel_lens/resources/app_assets.dart';

class TileModel {
  final String title;
  final String subtitle;
  final String image;
  final String rating;

  TileModel({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.image,
  });
}

List tileModelList = [
  TileModel(
    title: "La Costa",
    subtitle: "Peru, South America",
    rating: "4.5",
    image: AppAssets.kPicture1,
  ),
  TileModel(
    title: "Rio Dee Janeiro",
    subtitle: "Brazil, South America",
    rating: "4.7",
    image: AppAssets.kPicture2,
  ),
  TileModel(
    title: "Redeemer",
    subtitle: "Brazil, South America",
    rating: "4.7",
    image: AppAssets.kPicture4,
  ),
  TileModel(
    title: "Sugarloaf Mountain",
    subtitle: "Brazil, South America",
    rating: "4.7",
    image: AppAssets.kPicture5,
  ),
  TileModel(
    title: "Salvador",
    subtitle: "Brazil, South America",
    rating: "4.7",
    image: AppAssets.kPicture3,
  ),
  TileModel(
    title: "Rainforest",
    subtitle: "Brazil, South America",
    rating: "4.7",
    image: AppAssets.kPicture6,
  ),
];
