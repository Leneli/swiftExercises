// Вычислить квадратный корень

// Написать функцию, которая принимает число (тип данных Int) и возвращает квадратный корень из этого числа, округленный до ближайшего целого. Без использования функции sqrt().

import Foundation

func sqrtFunc(_ n: Int) -> Double {
  guard n >= 0 else { return Double.nan }
  let exp = pow(Double(n), 0.5)
  return Double(lround(exp))
}

sqrtFunc(64)
sqrtFunc(-9)
sqrtFunc(1)
sqrtFunc(0)
