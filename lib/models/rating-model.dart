class RatingData{
  final String name ;
  final double rate;
  final String comment;
  final String image;

  RatingData({
    required this.name,
    required this.rate,
    required this.comment,
    required this.image,
  });
}
List<RatingData> RateData =[
  RatingData(
      name: 'rawan mohamed',
      rate: 4.7,
      comment: 'thank you',
      image:'images/female.png',
  ),
  RatingData(
      name: 'ahmed khaled',
      rate: 3.7,
      comment: 'thank you ...',
      image:'images/male.png',
  ),
  RatingData(
      name: 'roaa ahmed',
      rate: 3,
      comment: 'thank you 1457',
      image: 'images/profile.png'
  ),
];