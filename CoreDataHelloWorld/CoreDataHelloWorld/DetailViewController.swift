//
//  DetailViewController.swift
//  CoreDataHelloWorld
//
//  Created by Diego Freniche Brito on 12/09/2017.
//  Copyright © 2017 Diego Freniche Brito. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.timestamp!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    
    
    @IBAction func deleteEvent(_ sender: Any) {
        let context = detailItem?.managedObjectContext
        context?.delete(detailItem!)
        do {
            try context?.save()
        } catch {
            
        }
        
        // self.navigationController?.popViewController(animated: true)
    }
    
    
    


}

