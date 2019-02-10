//
//  RankingViewController.swift
//  ClassQuest
//
//  Created by Margaret Sit on 2/9/19.
//  Copyright © 2019 Margaret Sit. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {

    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var bottomBar: UIView!
    
    @IBOutlet var button : [UIButton]!
    
    var selectedIndex : Int = 3
    
    @IBOutlet weak var amountValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.backgroundColor = UIColor(red : 0.21, green:0.71, blue : 0.63, alpha:1.0)
        self.bottomBar.backgroundColor = UIColor(red : 0.21, green:0.71, blue : 0.63, alpha:1.0)
        
        button[selectedIndex].isSelected = true
        
        amountValue.text = "287"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressTab(_ sender: UIButton) {
        print("didPressTab")
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        print(selectedIndex)
        button[previousIndex].isSelected = false
        
        sender.isSelected = true
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if(selectedIndex == 0){
            let viewController = storyboard.instantiateViewController(withIdentifier: "KingdomViewController") as! KingdomViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }else if(selectedIndex == 1){
            let viewController = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }else if(selectedIndex == 2){
            let viewController = storyboard.instantiateViewController(withIdentifier: "ClassesViewController") as! ClassesViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }else if(selectedIndex == 3){
            let viewController = storyboard.instantiateViewController(withIdentifier: "RankingViewController") as! RankingViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
