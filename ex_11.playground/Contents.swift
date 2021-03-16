// Не более чем 3 различные буквы

// Написать функцию, которая принимает две строки и возвращает true, если они одинаковы по длине, но различаются по содержанию не более чем на 3 буквы, без учета регистра.

func similarStrings(_ string1: String, _ string2: String, diff: Int = 3) -> Bool {
  let letters1 = Array(string1.lowercased().sorted())
  let letters2 = Array(string2.lowercased().sorted())
  var diffCounter = 0
  
  if letters1.count != letters2.count {
    return false
  }
  
  for (index, char) in letters1.enumerated() {
    if char != letters2[index] {
      diffCounter += 1
      
      if diffCounter > diff {
        return false
      }
    }
  }
  
  return diffCounter <= diff
}

similarStrings("Hello world", "Hello would")
similarStrings("Hello world", "Hello world!")
similarStrings("Hello world", "Hello swift")
similarStrings("Hello world", "Hello swift", diff: 5)
