class Cast{
  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;

    jsonList.forEach((element) {
      final actor = Actor.fromJsonMap(element);
      actores.add(actor);
    });
  }
}


class Actor {
  bool adult;
  int gender;
  int id;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  int castId;
  String character;
  String creditId;
  int order;
  String job;

  Actor({
    this.adult,
    this.gender,
    this.id,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.job,
  });

  Actor.fromJsonMap(Map<String, dynamic> json){
    adult         = json['adult'];
    gender        = json['gender'];
    id            = json['id'];
    name          = json['name'];
    originalName  = json['original_name'];
    popularity    = json['popularity'];
    profilePath   = json['profile_path'];
    castId        = json['cast_id'];
    character     = json['character'];
    creditId      = json['credit_id'];
    order         = json['order'];
    job           = json['job'];
  }


 getFoto() {
    if (profilePath == null) {
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlKywGTDBY4M274zz4697R7-gl9dZcGLatFw&usqp=CAU&ec=45761791';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }

}

