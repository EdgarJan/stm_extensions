library stm_extensions;

extension STMExtensions on String {
  //capitalizes first letter, and do not change anythin else
  String onlyCapitalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }

  String replaceLithuanianCharacters() {
    final Map<String, String> replacements = {
      'ą': 'a',
      'č': 'c',
      'ę': 'e',
      'ė': 'e',
      'į': 'i',
      'š': 's',
      'ų': 'u',
      'ū': 'u',
      'ž': 'z',
      'Ą': 'A',
      'Č': 'C',
      'Ę': 'E',
      'Ė': 'E',
      'Į': 'I',
      'Š': 'S',
      'Ų': 'U',
      'Ū': 'U',
      'Ž': 'Z'
    };
    String result = this;
    replacements.forEach((lithuanian, english) {
      result = result.replaceAll(lithuanian, english);
    });

    return result;
  }
}
