// Сортировка массива строк по длине

// Написать расширение для коллекций, возвращающее массив строк, отсортированный по длине. Более длинные строки впереди. Например, ["a", "abc", "ab"].stringSort() вернет ["abc", "ab", "a"]

extension Collection where Iterator.Element == String {
  func stringSort() -> [String] {
//    var map = [Int: String]()
//    var counts = [Int]()
//    var result = [String]()
//
//    for str in self {
//      map[str.count] = str
//      counts.append(str.count)
//    }
//
//    for index in counts.sorted().reversed() {
//      result.append(map[index]!)
//    }
//
//    return result
    
    return self.sorted { $0.count > $1.count }
  }
}

["a", "abc", "ab"].stringSort()
