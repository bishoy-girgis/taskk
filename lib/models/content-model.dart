
class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title,required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Track Your Booking',
      image: 'images/intro1.jpg',
      discription: 'While matching you with well-trained & \nreliable craftsmen , we’ll notify you\n about the progress of your appointment\n as well as important updates .\n We promise we will not bug you.',
  ),
  UnbordingContent(
      title: 'Easy Payment',
      image: 'images/intro2.jpg',
      discription: 'Payment made easy through debit card .\ncredit card & more ways to pay for your\nservices.',
  ),
  UnbordingContent(
      title: 'Location Services',
      image: 'images/intro3.jpg',
      discription: 'SANAI3EY uses location services in\n order to deliver a punctual services to\n your doorstep.Don’t worry we access \nyour location only while you are using the app .',
  ),
];