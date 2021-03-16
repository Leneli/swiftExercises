// Остаток от деления

// Написать функцию, которая считает от 1 до 100 и печатает "Three" если число делится на 3, "Five" если число делится на 5, "Three & Five" если число делится и на 3, и на 5.

func division(_ range: ClosedRange<Int>) {
  for num in range {
    let three = num % 3
    let five = num % 5
    
    if three == 0 && five == 0 {
      print("number \(num), three and five")
    } else if three == 0 {
      print("number \(num), three")
    } else if five == 0 {
      print("number \(num), five")
    }
  }
}

division(1...100)
