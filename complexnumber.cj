import std.math.*
import std.format.*
class ComplexNumber {
    let real: Float64
    let imag: Float64
    // 构造函数
    public init(real: Float64, imag: Float64) {
        this.real = real
        this.imag = imag
    }
    // 共轭
    public func conjugate(){
        return ComplexNumber(this.real, -this.imag)
    }
    // 模
    public func abs(){
        return sqrt(pow(this.real, 2) + pow(this.imag, 2))
    }
    // 加法
    public func add(other: ComplexNumber){
        return ComplexNumber(this.real + other.real, this.imag + other.imag)
    }
    public func add(other: Float64){
        return ComplexNumber(this.real + other, this.imag)
    }
    // 减法
    public func sub(other: ComplexNumber){
        return ComplexNumber(this.real - other.real, this.imag - other.imag)
    }
    public func sub(other: Float64){
        return ComplexNumber(this.real - other, this.imag)
    }
    // 乘法
    public func mult(other: ComplexNumber){
        return ComplexNumber(
            this.real * other.real - this.imag * other.imag,
            this.real * other.imag + this.imag * other.real
        )
    }
    public func mult(other: Float64){
        return ComplexNumber(this.real * other, this.imag * other)
    }
    // 倒数
    public func reciprocal(){
        let denom = pow(this.real, 2) + pow(this.imag, 2)
        return ComplexNumber(this.real / denom, -this.imag / denom)
    }
    // 除法
    public func div(other: ComplexNumber){
        let denom = pow(other.real, 2) + pow(other.imag, 2)
        return ComplexNumber(
            (this.real * other.real + this.imag * other.imag) / denom,
            (this.imag * other.real - this.real * other.imag) / denom
        )
    }
    public func div(other: Float64){
        return ComplexNumber(this.real / other, this.imag / other)
    }
    //复数的指数运算
    public func exponentiation(){
        let a = exp(this.real)
        let expReal = a * cos(this.imag)
        let expImag = a * sin(this.imag)
        return ComplexNumber(expReal, expImag)
    }
}
main(){
    let a: Float64 = 3.0
    let c = ComplexNumber(3.0,4.0)
    let d = ComplexNumber(1.0,2.0)
    //共轭复数
    let conjugateC = c.conjugate()
    print("共轭复数：")
    println("${conjugateC.real.format(".2")} + ${conjugateC.imag.format(".2")}i")
    //复数的模
    let absC = c.abs()
    println("${absC.format(".2")}")
    print("复数的模：")
    //复数的加法
    let sum = c.add(d)
    print("复数的加法: ")
    println("${sum.real.format(".2")} + ${sum.imag.format(".2")}i")
    //复数的加法（与实数相加）
    let sumWithReal = c.add(a)
    print("复数与实数的加法: ")
    println("${sumWithReal.real.format(".2")} + ${sumWithReal.imag.format(".2")}i")
    //复数的减法
    let difference = c.sub(d)
    print("复数的减法: ")
    println("${difference.real.format(".2")} + ${difference.imag.format(".2")}i")
    //复数的减法（与实数相减）
    let differenceWithReal = c.sub(a)
    print("复数与实数的减法: ")
     println("${differenceWithReal.real.format(".2")} + ${differenceWithReal.imag.format(".2")}i")
    //复数的乘法
    let product = c.mult(d)
    print("复数的乘法: ")
    println("${product.real.format(".2")} + ${product.imag.format(".2")}i")
    //复数的乘法（与实数相乘）
    let productWithReal = c.mult(a)
    print("复数与实数的乘法: ")
    println("${productWithReal.real.format(".2")} + ${productWithReal.imag.format(".2")}i")
    //复数的倒数
    let reciprocalC = c.reciprocal()
    print("复数的倒数: ")
    println("${reciprocalC.real.format(".2")} + ${reciprocalC.imag.format(".2")}i")
    //复数的除法
    let quotient = c.div(d)
    print("复数的除法: ")
    println("${quotient.real.format(".2")} + ${quotient.imag.format(".2")}i")
    //复数的除法（与实数相除）
     let quotientWithReal = c.div(a)
    print("复数与实数的除法: ")
    println("${quotientWithReal.real.format(".2")} + ${quotientWithReal.imag.format(".2")}i")
    //复数的指数运算
    let exponentiationC = c.exponentiation()
    print("复数的指数运算: ")
    println("${exponentiationC.real.format(".2")} + ${exponentiationC.imag.format(".2")}i")
}