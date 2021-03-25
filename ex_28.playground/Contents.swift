// Воспроизвести метод firstIndex(:of)

// Написать расширение для коллекций, которое воспроизведет работу метода firstIndex(:of)

extension Collection where Iterator.Element: Equatable {
  func firstIndexOf(of: Iterator.Element) -> Int? {
    for (index, elem) in self.enumerated() {
      if elem == of {
        return index
      }
    }
    
    return nil
  }
}

let collection = [1, 4, 5, 4, 7, 5, 8, 1, 3]
let strings = ["a", "b", "c", "c", "d", "a"]

collection.firstIndex(of: 8)
collection.firstIndexOf(of: 8)

strings.firstIndex(of: "c")
strings.firstIndexOf(of: "c")
