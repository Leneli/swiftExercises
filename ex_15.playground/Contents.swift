// Возведение одного числа в степень другого

// Написать функцию, которая принимает два положительных числа и возводит первое в степень второго

func exponentiation(number: UInt, exponent: UInt) -> UInt {
  var pow: UInt = 1
  
  for _ in 1...exponent {
    pow *= number
  }

  return pow
}

exponentiation(number: 2, exponent: 2)
exponentiation(number: 7, exponent: 2)
exponentiation(number: 234, exponent: 3)
exponentiation(number: 11, exponent: 7)
