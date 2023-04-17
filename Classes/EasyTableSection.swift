//
//  EasyTableSection.swift
//  EasyTableView
//
//  Created by 虞政凯 on 2023/4/16.
//

import Foundation
import UIKit

public class EasyTableSection {
    public var rows = [UITableViewCell]()
    public var viewForHeaderInSection: (() -> UIView?)?
    public var heightForHeaderInSection: (() -> CGFloat)?
    public init() {}
}
