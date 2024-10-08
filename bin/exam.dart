import 'dart:io';
//
// void main(){
//   print("Enter an integer number");
//   int input= int.parse(stdin.readLineSync()!);
//   String reverse=input.toString().split('').reversed.join('');
//   print("After reversed :$reverse");
// }

// void main() {
//   List<int> myList = [7, 2, 10, 41, 35];
//     secondLowest_secondGreatest(myList);
//   }
//
// void secondLowest_secondGreatest(List<int> myList) {
//   myList.sort();
// int second_lowest=myList[1];
// int second_greatest=myList[myList.length-2];
// print("the second lowest $second_lowest the second greatest $second_greatest");
// }

// abstract functions :
// abstract functions is a functions that is have abstract class and does not have implementations
// , thier methods does not have body , it must to recall those methods in anuthor classes and put any attributes in it.

//what do you know about constructor?
// Constructors have the same name of super class
// there are 3 types or more of Constructors :
// 1-named constructor.
// 2-default constructor.
// 3- parametres constructor.

void main()async{
 Book b1=Book("The white House", "john", 1919);
 // b1.getDetails();
 Library l1=Library();

 l1.addBook(b1);
 l1.addBook(Book("The black world", "Adison", 2000));
 l1.addBook(Book("The black horse", "author", 1825));
 print(l1.Get_total_Books());
 print("---------------------------");
  l1.findBookByTitle("The black horse");
  print("---------------------------------");
  await l1.fech_books();
 l1.showAllBooks();
}
 class Book{
  String? title;
  String? author;
  int? year;



  Book(String title ,String author, int year){
    this.title=title;
    this.author=author;
    this.year=year;
  }
  getDetails(){
    print("$title by $author, published in $year");
  }

  }
   class Library {
     List<Book> books=[];
     static int totalBooks=0;

     // void fetchBookFromServer()async{
     //   // print("is fetching");
     //   await fech_books();
     //   books.add(Book("h", "g", 2888));
     //  print("seccess");
     //
     // }
     Future fech_books() async {
      await  Future.delayed(Duration(seconds: 2));
      books.add(Book("title", "author", 1999));
      print("succes");
     }

    void addBook(Book book){
       books.add(book);
       totalBooks++;
     }
     void showAllBooks(){
       for(Book book in books){
         book.getDetails();
       }
     }
     int Get_total_Books(){
      return totalBooks;
     }
     void findBookByTitle(String title) {
       for (Book element in books) {
         if (element.title == title) {
           print("The title is found in book  => '$title'");
           break;
         } else {
           print("not found in book ${element.title}");
         }
       }
     }}