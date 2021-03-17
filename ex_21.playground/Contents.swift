// Сложить числа в строке

// Написать функцию, которая принимает строку, содержащую числа и буквы и возвращающую сумму чисел в строке. Например, строка "a1b2c3" вернет число 6 (1 + 2 + 3).

func sumOfNumbericLetters(_ string: String) -> Int {
  var result = 0
  
  for char in string {
    let num = Int(String(char))

    if num != nil {
      result += num ?? 0
    }
  }
  
  return result
}

sumOfNumbericLetters("as4fjd5jj43")
sumOfNumbericLetters("3oo5o4oo5o1")
