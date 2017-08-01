import UIKit

class Book: NSObject {
    var title: String = "Default"
}
let book: Book = Book()
let keyPath = \Book.title

book[keyPath: keyPath] = "New title"

