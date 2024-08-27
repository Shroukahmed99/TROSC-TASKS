void main() {
  Book book1 = Book('اكستاسى', 'محمد ', 250);
  book1.disPlay();
/////////////////////////////////2//////////////////////////////////////////

  var novel1 = Novel('ارض زيكولا', 'محمود', 100, 'خياليه');
  novel1.disPlay();
  ////////////////////////////////3/////////////////////////////////////////
  Shape circle = Circle(10);
  Shape rectangle = Rectangle(10, 5);

  printArea(circle);
  printArea(rectangle);

//////////////////////////////////////////////////////////////////////
}

///////////////////////classes///////////////////////////////////

class Book {
  String? title;
  String? author;
  int? pages;

  Book(this.title, this.author, this.pages);

  void disPlay() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $pages');
  }
}

///////////////////////////////////2///////////////////////////////
class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void disPlay() {
    super.disPlay();
    print('Genre: $genre');
  }
}

///////////////////////////////////3//////////////////////////////////
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void printArea(Shape shape) {
  print('The area is ${shape.area()}');
}
/////////////////////////////////////////////////////////////////////
