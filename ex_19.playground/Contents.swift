// Бинарный переворот

// Написать функцию, которая принимает число (тип данных UInt) и возвращает число (тип данных UInt), которое является его обратным бинарным представлением, сдвинутое так, что обязательно содержит 8 бинарных символов. Например, число 32 представляет собой число 100000 в бинарном представлении. Сдвигая это число так, чтобы в нем было 8 бинарных символов, получим число 00100000. Перевернув это число, имеем бинарное число 00000100, которое равняется числу 4 в десятичном представлении. Таким образом, получив число 32, функция должнавернуть число 4.

func binaryReverse(_ number: UInt) -> UInt {
  let binNumber = String(number, radix: 2)
  let prefixCount = binNumber.count < 8 ? 8 - binNumber.count : 0
  let binString = String(repeating: "0", count: prefixCount) + binNumber
  let binRevStr = String(binString.reversed())
  
  return UInt(binRevStr, radix: 2)!
}

binaryReverse(14)
binaryReverse(32)
