class AppMedia {
  static const _baseImage = 'media/images';

  static const logo = '$_baseImage/logo.png';
  static const hotelRoom = '$_baseImage/hotel_room.png';
  static const planeSit = '$_baseImage/plane_sit.jpg';
  static const visaCard = '$_baseImage/visa_card.png';

  static String getMediaUrl(String name) {
    return '$_baseImage/$name';
  }
}
