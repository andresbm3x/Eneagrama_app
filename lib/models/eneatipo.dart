class Eneatipo{
    int id;
    String title;
    String description;
    String imageRoute;
    String color;

    Eneatipo({this.id,this.title,this.description,this.imageRoute,this.color});

    Eneatipo.fromMap({this.id});
}
