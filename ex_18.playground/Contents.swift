// Число единиц в бинарном представлении

// Написать функцию, которая принимает положительное число (тип данных Int) и возвращает два числа - следующее за ним число с таким же количеством единиц в бинарном представлении, и предыдущее число с таким же количеством единиц в бинарном представлении. Если такого числа нет, возвращает nil. Например, число 12 в бинарном представлении равно 1100 т.е. содержит 2 единицы. Следующее за ним число, которое содержит столько же единиц это число 17 (10001), а предыдущее число с таким же количеством единиц это число 10 (1010).

func unitsOfBinary(_ num: Int) -> Int {
  let binary = String(num, radix: 2)
  return binary.filter { $0 == "1" }.count
}

func binaryNeighbors(_ number: Int) -> (Int?, Int?) {
  let maxIterations = number + 100 // "проверка на дурака", не более 100 итераций
  let unitsCount = unitsOfBinary(number)
  var result: (Int?, Int?) = (prev: nil, next: nil)
  var counter = 0
  
  // ищем предыдущее число
  
  counter = number - 1

  while (result.0 == nil && counter > 0 && counter <= maxIterations) {
    if unitsOfBinary(counter) == unitsCount {
      result.0 = counter
    }

    counter -= 1
  }
  
  // ищем следующее число
  
  counter = number + 1
  
  while (result.1 == nil && counter <= maxIterations) {
    if unitsOfBinary(counter) == unitsCount {
      result.1 = counter
    }

    counter += 1
  }
  
  return result
}

binaryNeighbors(12)
binaryNeighbors(34)
binaryNeighbors(1)
binaryNeighbors(1000)
