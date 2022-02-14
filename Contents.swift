import UIKit

import Foundation

protocol Color : AnyObject {
    func setColor(_ color : String)
}

//presenter
class Draw {
    weak var delegate : Color? // Bike

    func finishDrawing() {
        delegate?.setColor("blue")

    }
}

// View class
class Pencil: Color {
    let b = Draw()

    func selectcolor() {
        b.delegate = self
        b.finishDrawing()
    }

    func setColor(_ color: String) {
        print("\(color)")
    }

}

let b = Pencil()
b.selectcolor()
