// Является ли строка панграммой

// Написать функцию, которая принимает строку и возвращает true, если эта строка является панграммой, игнорируя регистр (панграмма - фраза, содержащая в себе все буквы алфавита. Их используют для презентации шрифтов, чтобы можно было в одной фразе рассмотреть все элементы. Например: "аэрофотосъёмка ландшафта уже выявила земли богачей и процветающих крестьян", "The quick brown fox jumps over the lazy dog").

struct Pangramm {
  let id: String
  let string: String
  
  var firstLetter: Character {
    switch self.id {
      case "EN":
        return "a"
      case "RU":
        return "а"
      default:
        return "a" // latin A, EN by default
    }
  }
  
  var lastLetter: Character {
    switch self.id {
      case "EN":
        return "z"
      case "RU":
        return "я"
      default:
        return "z" // EN by default
    }
  }
  
  var count: Int {
    switch self.id {
      case "EN":
        return 26
      case "RU":
        return 32 // ё не включается в интервал
      default:
        return 26 // EN by default
    }
  }
  
  var isPangramm: Bool {
    let set = Set(string)
    let letters = set.filter {
      $0 >= self.firstLetter && $0 <= self.lastLetter
    }

    return letters.count == self.count
  }
  
  init(id: String = "EN", string: String) {
    self.id = id
    self.string = string
  }
}

let pangramm1 = Pangramm(id: "RU", string: "аэрофотосъёмка ландшафта уже выявила земли богачей и процветающих крестьян")
let pangramm2 = Pangramm(id: "RU", string: "съёмка ландшафта уже выявила земли богачей и процветающих крестьян")
let pangramm3 = Pangramm(string: "The quick brown fox jumps over the lazy dog")
let pangramm4 = Pangramm(string: "The quick brown fox jumped over the lazy dog")

pangramm1.isPangramm
pangramm2.isPangramm
pangramm3.isPangramm
pangramm4.isPangramm
