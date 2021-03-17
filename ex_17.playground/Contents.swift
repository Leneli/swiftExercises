// Найти простое число

// Написать функцию, которая принимает число (тип данных Int) и возвращает true, если это число является простым (простое число - это натуральное число, больше единицы, имеющее ровно два натуральных делителя: 1 и само себя).

func naturalNumber(_ number: Int) -> Bool {
  guard number > 1 else { return false }
  
  for i in 2..<number {
    if number % i == 0 {
      return false
    }
  }
  
  return true
}

naturalNumber(-3)
naturalNumber(0)
naturalNumber(1)
naturalNumber(3)
naturalNumber(5)
naturalNumber(8)
