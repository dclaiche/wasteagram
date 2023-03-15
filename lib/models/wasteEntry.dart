// Model that maps wasteagram data to a object to be displayed in listview DTO

class WasteEntry {
  int? quantity;
  String? imageURL;
  double? latitude;
  double? longitude;
  String? date;

  String toString() {
    return 'Quantity: $quantity, ImageURL: $imageURL, Latitude: $latitude, Longitude: $longitude, Date: $date';
  }
}