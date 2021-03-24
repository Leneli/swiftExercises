// Медианное значение массива

// Написать расширение для коллекций, которое принимает массив чисел с типом данных Int и возвращает медианное значение массива или nil если это пустой массив. Например, [1, 2, 3].medianSorted() вернет 2, а [1, 2, 3, 4].medianSorted() вернет 2.5

extension Collection where Iterator.Element == Int {
  func medianSorted() -> Double? {
    guard self.count > 0 else { return nil }

    let sorted = self.sorted()
    let count = sorted.count
    
    if count % 2 != 0 {
      return Double(sorted[(count - 1) / 2])
    } else {
      let el1 = sorted[count / 2]
      let el2 = sorted[(count / 2) - 1]
      
      return Double((el1 + el2)) / 2
    }
  }
}

[].medianSorted()
[1, 2, 3].medianSorted()
[1, 2, 3, 4].medianSorted()
