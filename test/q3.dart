import 'package:avera_interviews_dart_2/q3/index.dart';
import 'package:test/test.dart';

List<List<String>> prep(List<List<String>> input) {
  return input.map((e) {
    e.sort();
    return e;
  }).toList();
}

void main() {
  group('groupAnagrams', () {
    test('should correctly group anagrams in a list of words', () {
      final words = ["eat", "tea", "tan", "ate", "nat", "bat"];
      final expectedOutput = [
        ["ate", "eat", "tea"],
        ["nat", "tan"],
        ["bat"]
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test('should correctly handle a list of words with no anagrams', () {
      final words = ["hello", "world"];
      final expectedOutput = [
        ["hello"],
        ["world"]
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test('should correctly handle an empty list of words', () {
      final words = <String>[];
      final expectedOutput = <List<String>>[];
      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test('should correctly handle a list of words with only one word', () {
      final words = ["test"];
      final expectedOutput = [
        ["test"]
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test(
        'should correctly handle a list of words where all words are anagrams of each other',
        () {
      final words = ["debitcard", "badcredit", "dinner", "redesign", "indoor"];
      final expectedOutput = [
        ["badcredit", "debitcard"],
        ["dinner"],
        ["redesign"],
        ["indoor"]
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test(
        'should correctly handle a list of words where all words have the same letters but different order',
        () {
      final words = ["abc", "acb", "bac", "bca", "cab", "cba"];
      final expectedOutput = [
        ["abc", "acb", "bac", "bca", "cab", "cba"]
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test('should correctly handle a list of words with very long anagrams', () {
      final words = [
        'debcicltlmlyblxbzeuwiujfmsvcrpgpmncfjxomxrswnggkwkwzvqhyauqrr',
        'rrquayhqvzwkwkggnwsrxmoxjfcnmpgprcvsmfjuiwuezbxlbylmltlcicbed',
        'celbicthmlyblxbzeuwiujfmsvcrpgpmncfjxomxrswnggkwkwzvqhyauqrz'
      ];
      final expectedOutput = [
        [
          'debcicltlmlyblxbzeuwiujfmsvcrpgpmncfjxomxrswnggkwkwzvqhyauqrr',
          'rrquayhqvzwkwkggnwsrxmoxjfcnmpgprcvsmfjuiwuezbxlbylmltlcicbed'
        ],
        ['celbicthmlyblxbzeuwiujfmsvcrpgpmncfjxomxrswnggkwkwzvqhyauqrz']
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });

    test('should correctly handle a list of words with special characters', () {
      final words = ['rat', 'art', 'tar', '#tra', '@tar'];
      final expectedOutput = [
        ['rat', 'art', 'tar'],
        ['#tra'],
        ['@tar']
      ];

      expect(prep(groupAnagrams(words)), (prep(expectedOutput)));
    });
  });
}
