//
//  ItemStore.swift
//  Homepwner
//
//  Created by jimmy kim on 04/03/2017.
//  Copyright © 2017 yunaz. All rights reserved.
//

//import Foundation
import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
//    init(){
//        for _ in 0..<5 {
//            _ = createItem()
//        }
//    }
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(item: Item) {
        if let index = allItems.index(of: item){
            allItems.remove(at: index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int){
        if fromIndex == toIndex{
            return
        }
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(movedItem, at: toIndex)
    }
}

