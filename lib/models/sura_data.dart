class SuraData {
  final int id;
  final String suraNameEN;
  final String suraNameAR;
  final int verses;

  SuraData({
    required this.id,
    required this.suraNameEN,
    required this.suraNameAR,
    required this.verses,
  });
  @override
  String toString(){
    return 'suraDta(id: $id,'
        'suraNameEN: $suraNameEN,'
        'suraNameAR: $suraNameAR,'
        'verses: $verses)';
  }
}
