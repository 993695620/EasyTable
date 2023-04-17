//
//  ZKEasyTableView.swift
//  ZKEasyTableView
//
//  Created by 虞政凯 on 2023/4/16.
//

import Foundation
import UIKit


extension UITableView: EasyProtocol {}

public class ZKEasyTableView<T>: EasyProtocol {
    
    let t: T
    required init(_ t: T) {
        self.t = t
    }
}

public protocol EasyProtocol {
    associatedtype General
    var zk: General { get }
    static var zk: General.Type { get }
}

extension EasyProtocol {
    
    public var zk: ZKEasyTableView<Self> {
        return ZKEasyTableView(self)
    }
    
    public static var zk: ZKEasyTableView<Self>.Type {
        return ZKEasyTableView.self
    }
}

fileprivate struct TableViewKeys {
    static var sectionKey = "SectionKey"
    static var tableCoreKey = "TableCoreKey"
    static var selectRowAt = "SelectRowAt"
}

extension ZKEasyTableView where T: UITableView {
    
    typealias SelectRowAt = (UITableViewCell, IndexPath) -> Void
    
    //MARK: Cell分组
    public var sections: [ZKEasyTableSection] {
        
        get {
            if let sections = objc_getAssociatedObject(t, &TableViewKeys.sectionKey) as? [ZKEasyTableSection] {
                return sections
            }
            return [ZKEasyTableSection]()
        }
        
        set {
            objc_setAssociatedObject(t, &TableViewKeys.sectionKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            t.delegate = tableCore
            t.dataSource = tableCore
        }
    }
    
    //MARK: Cell点击
    public var didSelectRowAt: ((UITableViewCell, IndexPath) -> Void)? {
        
        get {
            if let selectRowAt = objc_getAssociatedObject(t, &TableViewKeys.selectRowAt) as? SelectRowAt {
                return selectRowAt
            }
            return nil
        }
        set {
            objc_setAssociatedObject(t, &TableViewKeys.selectRowAt, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private var tableCore: ZKEasyTableViewCore {
        get {
            if let core = objc_getAssociatedObject(t, TableViewKeys.tableCoreKey) as? ZKEasyTableViewCore {
                return core
            }
            let core = ZKEasyTableViewCore()
            self.tableCore = core
            return core
        }
        set {
            objc_setAssociatedObject(t, TableViewKeys.tableCoreKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}



























