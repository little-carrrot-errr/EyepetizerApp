//
//  Reusable.swift
//  EyepetizerApp
//
//   16.
//     
//

import UIKit

public protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier : String {
        return String(Self)
    }  
}

public extension UICollectionView {
    func registerClass<T : UICollectionView where T : Reusable>(cellClass : T.Type) {
        self.registerClass(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}