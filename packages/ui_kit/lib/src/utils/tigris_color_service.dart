class TigrisColorService {
  static String invertColor(String color) {
    return '0xFF${(0xFFFF00 ^ int.parse(color)).toRadixString(16).substring(1).toUpperCase()}';
  }
}
