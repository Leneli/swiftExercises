// Сгенерировать рандомное число из диапазона

// Написать функцию, которая принимает два положительных числа - минимальное и максимальное значение диапазона, и возвращает рандомное число из этого диапазона, включительно.

func randomize(_ minimum: UInt, _ maximum: UInt) -> UInt {
  let from = min(minimum, maximum)
  let to = max(minimum, maximum)
  
  return UInt.random(in: from...to)
}

randomize(1, 50)
randomize(99, 4)
