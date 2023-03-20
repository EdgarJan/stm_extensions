library stm_extensions;

extension STMExtensions on String {
  String onlyCapitalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }
}