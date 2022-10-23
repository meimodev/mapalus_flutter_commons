class UsersInfo {
  int verifiedAccountCount;
  int hadOrderCount;
  String lastQuery;

  UsersInfo({
    required this.verifiedAccountCount,
    required this.hadOrderCount,
    required this.lastQuery,
  });

  factory UsersInfo.fromMap(Map<String, dynamic> data) => UsersInfo(
    verifiedAccountCount: data['verified_count'],
    hadOrderCount: data['had_order'],
    lastQuery: data['last_query'],
  );


  @override
  String toString() {
    return 'UsersInfo{verifiedAccountCount: $verifiedAccountCount, hadOrderCount: $hadOrderCount lastQuery: $lastQuery}';
  }
}
