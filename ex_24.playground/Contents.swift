// Повторения чисел в коллекции

// Написать расширение для коллекции (Int), возвращающую число раз, которое определенная цифра встречалась во всех числах коллекции. Например, [5, 15, 55, 515].repetition(digit: "5") вернет число 6.

extension Collection where Iterator.Element == Int {
  func repetition(digit: Character) -> Int {
    var counter = 0
    
    for item in self {
      counter += String(item).filter { $0 == digit }.count
    }
    
    return counter
  }
}

var arr = [5, 15, 55, 515];

arr.repetition(digit: "5")
