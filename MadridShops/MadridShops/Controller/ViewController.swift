//
//  ViewController.swift
//  MadridShops
//
//  Created by Diego Freniche Brito on 07/09/2017.
//  Copyright © 2017 KC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var shops: Shops?
    @IBOutlet weak var shopsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let downloadShopsInteractor: DownloadAllShopsInteractor = DownloadAllShopsInteractorFakeImpl()
        /*
        downloadShopsInteractor.execute(onSuccess: { (shops: Shops) in
            // todo OK
        }) { (error: Error) in
            // error
        }
        
        downloadShopsInteractor.execute(onSuccess: { (shops: Shops) in
            // todo OK
        })
        */
        
        downloadShopsInteractor.execute { (shops: Shops) in
            // todo OK
            print("Name: " + shops.get(index: 0).name)
            self.shops = shops
            
            self.shopsCollectionView.delegate = self
            self.shopsCollectionView.dataSource = self
        }
    }


}

