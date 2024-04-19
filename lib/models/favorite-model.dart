class FavoriteData{
  final String name ;
  final double rate;
  final String category;
  final String image;

  FavoriteData({
    required this.name,
    required this.rate,
    required this.category,
    required this.image,
  });
}
List<FavoriteData> FavData =[
  FavoriteData(
    name: 'rawan mohamed',
    rate: 4.7,
    category: 'nursing',
    image:'images/female.png',
  ),
  FavoriteData(
    name: 'ahmed khaled',
    rate: 3.7,
    category: 'cleaning',
    image:'images/male.png',
  ),
  FavoriteData(
      name: 'roaa ahmed',
      rate: 3,
      category: 'painting',
      image: 'images/profile.png'
  ),
];