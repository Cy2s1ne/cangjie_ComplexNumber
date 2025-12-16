import std.math.*

public class ComplexNumber {
    let real: Float64
    let imag: Float64
    // 构造函数
    public init(real: Float64, imag: Float64) {
        this.real = real
        this.imag = imag
    }

    // 共轭
    public func conjugate() {
        return ComplexNumber(this.real, -this.imag)
    }

    // 模
    public func abs() {
        return sqrt(pow(this.real, 2) + pow(this.imag, 2))
    }
    // 加法
    public func add(other: ComplexNumber) {
        return ComplexNumber(this.real + other.real, this.imag + other.imag)
    }
    public func add(other: Float64) {
        return ComplexNumber(this.real + other, this.imag)
    }
    // 减法
    public func sub(other: ComplexNumber) {
        return ComplexNumber(this.real - other.real, this.imag - other.imag)
    }
    public func sub(other: Float64) {
        return ComplexNumber(this.real - other, this.imag)
    }
    // 乘法
    public func mult(other: ComplexNumber) {
        return ComplexNumber(
            this.real * other.real - this.imag * other.imag,
            this.real * other.imag + this.imag * other.real
        )
    }
    public func mult(other: Float64) {
        return ComplexNumber(this.real * other, this.imag * other)
    }
    // 倒数
    public func reciprocal() {
        let denom = pow(this.real, 2) + pow(this.imag, 2)
        return ComplexNumber(this.real / denom, -this.imag / denom)
    }
    // 除法
    public func div(other: ComplexNumber) {
        let denom = pow(other.real, 2) + pow(other.imag, 2)
        return ComplexNumber(
            (this.real * other.real + this.imag * other.imag) / denom,
            (this.imag * other.real - this.real * other.imag) / denom
        )
    }
    public func div(other: Float64) {
        return ComplexNumber(this.real / other, this.imag / other)
    }
    //复数的指数运算
    public func exponentiation() {
        let a = exp(this.real)
        let expReal = a * cos(this.imag)
        let expImag = a * sin(this.imag)
        return ComplexNumber(expReal, expImag)
    }
}
