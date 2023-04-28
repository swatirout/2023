//
//  SegueHandler.swift
//  SegueManagementWithProtocols
//
//  Created by Swati Rout on 27/04/23.
//

import Foundation
import UIKit
protocol SegueHandler {
    associatedtype SegueIdentifier:RawRepresentable
}
extension SegueHandler where Self : UIViewController,
                             SegueIdentifier.RawValue == String {
    func segueIdentifier(for Segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let  identifier = Segue.identifier ,let segueIdentifier = SegueIdentifier(rawValue: identifier) else{
            fatalError("Not found")
        }
        return segueIdentifier
    }
}
