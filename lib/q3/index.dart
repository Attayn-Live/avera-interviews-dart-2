List<List<String>> groupAnagrams(List<String> words) {
  // Implementation goes here
  Map<String, List<String>> anagramGroups = {};

  for (String word in words) {
    String sorted = String.fromCharCodes(word.runes.toList()..sort());
    if (!anagramGroups.containsKey(sorted)) {
      anagramGroups[sorted] = [];
    }
    anagramGroups[sorted]!.add(word);
  }

  return anagramGroups.values.toList();
}
