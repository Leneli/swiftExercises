// Сокращение количества пробелов до одного

// Написать функцию, которая принимает строку как свой единственный параметр и возвращает ту же самую строку, только с замененнными множественными пробелами на единичный пробел (например, строка "Hello[space][space][space][space]world" вернется в виде "Hello[space]world").

func removeSpaces(_ string: String) -> String {
  var characters = [Character]()
  
  for char in string {
    if char != " " || characters.last != " " {
      characters.append(char)
    }
  }
  
  return String(characters)
}

removeSpaces("Hello     world")
removeSpaces("Hello world")
removeSpaces("   Hello world")
removeSpaces(" Hello world ")
removeSpaces("    Hello     world   ")
