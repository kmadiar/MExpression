//
//  MInt.swift
//  Expressions
//
//  Created by Kostiantyn Madiar on 06.10.2022.
//

import Foundation

public struct MInt {
    public let x: Int

    public init(x: Int) {
        self.x = x
    }
}

extension MInt: MExpression {
    public func eval() -> MExpression {
        self
    }
}

// MARK: - Conform + / - Arithmetic
extension MInt: AdditiveArithmetic {
    public static func - (lhs: MInt, rhs: MInt) -> MInt {
        .init(x: lhs.x - rhs.x)
    }

    public static func + (lhs: MInt, rhs: MInt) -> MInt {
        .init(x: lhs.x + rhs.x)
    }

    public static var zero: MInt {
        .init(x: 0)
    }
}

// MARK: - add multiplication
public extension MInt {
    static func * (lhs: Self, rhs: Self) -> Self {
        .init(x: lhs.x * rhs.x)
    }
}
