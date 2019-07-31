
//
//  StartViewController.swift
//  TakeAPhoto
//
//  Created by Tran Duc Anh on 7/22/19.
//  Copyright © 2019 Tran Duc Anh. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "We"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickToShowPopUpView(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let popoverVC = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        popoverVC.modalPresentationStyle = .popover
        popoverVC.preferredContentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3)
        popoverVC.popoverPresentationController?.permittedArrowDirections = .up
        popoverVC.popoverPresentationController?.backgroundColor = UIColor.yellow
        
        let popover = popoverVC.popoverPresentationController
        popover?.delegate = self
        popover?.sourceRect = sender.frame
        popover?.sourceView = self.view
        self.present(popoverVC, animated: true, completion: nil)
    }
  
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
