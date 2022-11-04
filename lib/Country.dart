class Country{
  String name;
  String smallFlag;
  String largeFlag;

  Country(this.name,this.smallFlag, this.largeFlag);

  factory Country.fromJson(Map<String, dynamic> json){
    return Country(
      json['name']['official'],
      json['flag'],
      json['flags']['png'],
    );
  }

}