//: [Previous](@previous)

import Foundation

// Cadenas de opcionales

class Student {
    var name: String?
    var books: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

print(myStudent.name)
print(myStudent.books?.pages)

myStudent.name = "Daniel"

let myBook = Book()
myBook.pages = 50

myStudent.books = myBook

// Enlace opcional encadenado

if let pages = myStudent.books?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) páginas")
} else {
    print("El libro no tiene páginas")
}


//: [Next](@next)
