void main() {
  String name = "Amit";
  print(name.codeUnitAt(0));
  print(name.codeUnits);
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.length);
  print(name.runtimeType);
  print("####################");
  print(name.compareTo("Ram"));
  print("Ram".compareTo("Amit"));
  print("Ram".compareTo("Ram"));
  print(name.contains("mi"));
  print(name.endsWith("it"));
  print(name.startsWith("am"));
  print(name.startsWith("mi", 1));
  print(name.indexOf("m")); // -1 not found
  print(name.lastIndexOf("i"));
  print("PAd Left" + name.padLeft(30));
  print("Pad Right " + name.padRight(20));
  print(name.replaceAll('m', 'e'));
  List<String> list = "Hello How are You".split(" ");
  print("After Split $list");
  print(name.startsWith("Am"));
  print(name.endsWith("it"));
  print(name.substring(1));
  print(name.substring(1, 2));
  print(name.toLowerCase());
  print(name.toUpperCase());
  print("     Amit     Srivastava      ".trim());
  print("     Amit     ".trimLeft());
  print("     Amit     ".trimRight());
  var ename = "Amit";
  String x = 'Amit';
  String y = 'Hello How r u '
      'I am Fine'
      'What About u';
  print(y);
  String z = """ Hello How r u
  I am Fine
  What About u """;
  String z1 = ''' Hello How r u
  I am Fine
  What About u ''';
  print(z);
}
