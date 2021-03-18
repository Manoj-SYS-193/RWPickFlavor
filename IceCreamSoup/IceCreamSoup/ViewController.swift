//
//  ViewController.swift
//  IceCreamSoup
//
//  Created by Sysfore on 18/March/2021.
//

import UIKit
import RWPickFlavor

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.addTarget(self, action: #selector(self.showViewController), for: .touchUpInside)
        
    }
    
    @objc
    func showViewController(){
        DispatchQueue.main.async {
            let bundle = Bundle(for: PickFlavorViewController.self)
            let storyboard = UIStoryboard(name: "Main", bundle: bundle)
            let vc =  storyboard.instantiateInitialViewController() ?? UIViewController()
            self.present(vc, animated: true, completion: nil)
        }
    } 
}

