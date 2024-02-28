/// rate : 3.9
/// count : 120

class Rating {
  Rating({
      this.rate, 
      this.count,});

  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  double? rate;
  int? count;
Rating copyWith({  double? rate,
  int? count,
}) => Rating(  rate: rate ?? this.rate,
  count: count ?? this.count,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }

}