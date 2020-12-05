void main() {
  Set<int> set = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};
  print(set.union(set2));
  print(set.intersection(set2));
  print(set.difference(set2));
  print(set2.difference(set));
}
