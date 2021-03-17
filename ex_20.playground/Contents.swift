// Числа в строке

// Написать функцию, которая принимает строку и возвращает true если строка содержит только числа, например, цифры от 0 до 9.

func numbericString(_ string: String) -> Bool {
  var isNumberic = true
  
  for char in string {
    if UInt(String(char)) == nil {
      isNumberic = false
      break
    }
  }
  
  return isNumberic
}

numbericString("12334566444")
numbericString("-1212121212")
numbericString("999t8394f99")
numbericString("184467440737095516155") // больше чем UInt.max
