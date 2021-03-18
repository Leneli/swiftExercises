// Сортировка коллекции по возрастанию до N

// Написать расширение для коллекций, возвращающее N наименьших элементов, отсортированных по возрастанию, где N имеет тип данных Int. Например, [1, 4, 3, 2].sortUpToN() вернет [1, 2, 3] если N = 3

extension Collection where Iterator.Element == Int {
  func sortUpToN(n: Int) -> [Int] {
    print(self.sorted())
    
    var newArray: [Int] = []
    
    for item in self.sorted() {
      if item <= n {
        newArray.append(item)
      }
    }
    
    return newArray
  }
}

[1, 4, 3, 2].sortUpToN(n: 3)
