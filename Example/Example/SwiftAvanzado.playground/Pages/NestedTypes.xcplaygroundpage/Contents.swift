//: [Previous](@previous)

import Foundation

// Tipos anidados

struct ChessPiece {
    
    let color: Color
    let type: PieceType
    
    enum Color: String {
        case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballero", pawn = "Peón"
        struct Number {
            let number: Int
        }
        var number : Number {
            switch self {
            case .king:
                return Number(number:1)
                
            case .queen:
                return Number(number:1)

            case .rock:
                return Number(number:2)

            case .bishop:
                return Number(number:2)

            case .knight:
                return Number(number:2)

            case .pawn:
                return Number(number:2)

            }
        }
    }
    
    var description: String {
        
        if type.number.number == 1 {
            return "Hay \(type.number.number) pieza de ajederz es de color \(color.rawValue) y de tipo \(type.rawValue)"
        }
        return "Hay \(type.number.number) piezas de ajederz es de color \(color.rawValue) y de tipo \(type.rawValue)"
    }
    
}

let myPiece = ChessPiece(color: .black, type: .rock)
print(myPiece.description)

//: [Next](@next)
