// Воссоздать метод min()

// Написать расширение для коллекций, которое воссоздает работу метода min()


extension Collection where Iterator.Element: Comparable {
  func minimum() -> Iterator.Element? {
    guard self.count > 0 else {
      return nil
    }
    
    var min = self[self.startIndex]
    
    for elem in self {
      if elem < min {
        min = elem
      }
    }
    
    return min
  }
}



let nums = [1, -3, 45, 12, -45]
let strs = ["c", "A", "a", "d", "e", "m", "l"]

nums.min()
nums.minimum()

strs.min()
strs.minimum()
