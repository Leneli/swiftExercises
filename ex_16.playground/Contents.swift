// Поменять два числа местами

// Поменять местами два положительных числа (тип данных: Int) без использования промежуточной переменной.


// #1
var a = 5
var b = 7

a = a + b
b = a - b
a = a - b

print("a = \(a), b = \(b)")


// #2
var c = 3
var d = 8

swap(&c, &d)

print("c = \(c), d = \(d)")


// #3
var e = 1
var f = 6

(e, f) = (f, e)

print("e = \(e), f = \(f)")
