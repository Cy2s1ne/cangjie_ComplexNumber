[中文](#中文) | [English](#english)

# cangjie_ComplexNumber（中文）

欢迎来到 cangjie_ComplexNumber 🎉

这是由 cangjie 编写的复数运算实现（不使用语言内置的复数类型），适合学习、练习和小型项目使用。文风轻松，例子清晰，快来玩一玩吧！

## 功能概览

- 表示复数 z = a + b * i（a: 实部，b: 虚部）
- 支持以下操作：
  - 加法、减法、乘法、除法
  - 共轭（conjugate）
  - 绝对值（modulus）和平方模
  - 以 e 为底的复数指数（e^(a + b i)）

## 快速说明（数学公式）

- 复数表示：z = a + b i
- 共轭：zc = a - b i
- 绝对值：|z| = sqrt(a^2 + b^2)
- 加法： (a+bi) + (c+di) = (a+c) + (b+d)i
- 减法： (a+bi) - (c+di) = (a-c) + (b-d)i
- 乘法： (a+bi)*(c+di) = (ac - bd) + (bc + ad)i
- 除法： (a+bi)/(c+di) = [(ac + bd) / (c^2 + d^2)] + [(bc - ad) / (c^2 + d^2)] i
- 指数： e^(a+bi) = e^a (cos b + i sin b)

## 使用示例（伪代码）

示例流程：创建复数 -> 进行运算 -> 打印结果。

```text
z1 = Complex(1, 2)    # 1 + 2i
z2 = Complex(3, -1)   # 3 - i
sum = z1.add(z2)
prod = z1.mul(z2)
quot = z1.div(z2)
conj = z1.conjugate()
mod = z1.abs()
exp = Complex.exp_e(z1)  # e^(1+2i)
```

（具体函数名请参照代码实现）

## 适用场景

- 学习复数的基本运算与实现方式
- 理解复数在数值计算、信号处理、物理或工程问题中的用法
- 用作教学示例或小型工程的内部工具库

## 贡献与许可

欢迎提交 issue 或 PR。项目中没有复杂依赖，适合 fork 后改进。

---

# English

# cangjie_ComplexNumber

ComplexNumber code by cangjie

Instructions

A complex number is expressed in the form z = a + b * i, where:

- a is the real part (a real number),
- b is the imaginary part (also a real number), and
- i is the imaginary unit satisfying i^2 = -1.

Operations on Complex Numbers

- Conjugate: zc = a - b * i
- Absolute Value: |z| = sqrt(a^2 + b^2) and |z|^2 = z * zc = a^2 + b^2
- Addition: z1 + z2 = (a + c) + (b + d) * i
- Subtraction: z1 - z2 = (a - c) + (b - d) * i
- Multiplication: z1 * z2 = (a * c - b * d) + (b * c + a * d) * i
- Division: z1 / z2 = (a + b * i) / (c + d * i) = (a*c + b*d)/(c^2 + d^2) + (b*c - a*d)/(c^2 + d^2) * i
- Exponentiation: e^(a + b * i) = e^a * (cos(b) + i * sin(b))

Implementation Requirements

Do not use built-in complex number support. Implement:

- addition, subtraction, multiplication, division of complex numbers
- conjugate
- absolute value
- exponentiation of e to a complex number
