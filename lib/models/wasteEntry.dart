// Model that maps wasteagram data to a object to be displayed in listview

class WasteEntry {
  int? quantity;
  String? imageURL;
  double? latitude;
  double? longitude;

  String toString() {
    return 'Quantity: $quantity, ImageURL: $imageURL, Latitude: $latitude, Longitude: $longitude';
  }
}