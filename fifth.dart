void main() {
  //String x = new String();
  String name = "Amit";
  name = name + " Srivastava";
  StringBuffer sb = new StringBuffer("Amit");
  sb.writeln("Srivastava");
  //sb.clear();
  sb.write("Delhi");
  print(sb);
  String d = sb.toString().toUpperCase();
  print(d);
}
