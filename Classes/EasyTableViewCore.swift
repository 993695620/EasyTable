//
//  EasyTableViewCore.swift
//  EasyTableView
//
//  Created by 虞政凯 on 2023/4/15.
//

import UIKit

class EasyTableViewCore: NSObject {}

extension EasyTableViewCore: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableView.zk.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableView.zk.sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.zk.sections[indexPath.section].rows[indexPath.row]
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.zk.sections[indexPath.section].rows[indexPath.row]
        tableView.zk.didSelectRowAt?(cell, indexPath)
    }
}

extension EasyTableViewCore: UITableViewDelegate {
    
}
