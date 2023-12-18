//
//  Persistant.swift
//  MyCoredata
//
//  Created by user on 2023/12/18.
//

import CoreData

struct PersistenceController {
    let container : NSPersistentContainer
    
    init (){
        container = NSPersistentContainer(name: "MycoreData")
        
        //persistentstore を作ったことないときの対応
        container.loadPersistentStores(completionHandler: {(storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresoleved Error \(error)")
            }
        })
    }
}
