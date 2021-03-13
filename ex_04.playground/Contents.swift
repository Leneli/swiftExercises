// Содержит ли одна строка другую?

// Написать функцию, которая принимает строку и возвращает true, если эта строка полностью содержится в другой строке, игнорируя регистр

extension String {
  func customContains(_ subString: String) -> Bool {
    let str = self.lowercased()
    let sub = subString.lowercased()
    let lengthSub = sub.count - 1
    let lengthStr = str.count - 1
    
    for (index, char) in str.enumerated() {
      if char == sub.first {
        let length = sub.count + index <= str.count ? lengthSub : lengthStr - index
        let start = str.index(str.startIndex, offsetBy: index)
        let end = str.index(start, offsetBy: length)

        if sub == str[start...end] {
          return true
        }
      }
    }
    
    return false
  }
}

let str = "Hello, sweet Swift"

str.customContains("Swift!")
str.customContains("Swift")
