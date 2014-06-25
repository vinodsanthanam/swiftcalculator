import Foundation

class Addition : OperatorDelegate{
    func operate(a: Double, b: Double) -> Double{
        return a + b
    }
}

class Subtraction : OperatorDelegate{
    func operate(a: Double, b: Double) -> Double{
        return a - b
    }
}

class Multiplication : OperatorDelegate{
    func operate(a: Double, b: Double) -> Double{
        return a * b
    }
}

class Division : OperatorDelegate{
    func operate(a: Double, b: Double) -> Double{
        return a / b
    }
}

class None : OperatorDelegate{
    func operate(a: Double, b: Double) -> Double{
        return b
    }
}
