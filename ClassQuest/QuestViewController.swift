//
//  QuestViewController.swift
//  ClassQuest
//
//  Created by Margaret Sit on 2/10/19.
//  Copyright © 2019 Margaret Sit. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController {

    var selectedIndex : Int = 0
    var showP : Bool = false
    
    @IBOutlet var button : [UIButton]!
    
    @IBOutlet weak var ammountValue: UILabel!
    
    @IBAction func clickClown(_ sender: Any) {
        showP = true
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "InitialLocationViewController") as! InitialLocationViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBOutlet weak var topBar: UIView!
    
    @IBOutlet weak var bottomBar: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topBar.backgroundColor = UIColor(red : 0.21, green:0.71, blue : 0.63, alpha:1.0)
        self.bottomBar.backgroundColor = UIColor(red : 0.21, green:0.71, blue : 0.63, alpha:1.0)
        
        button[selectedIndex].isSelected = true
        
        ammountValue.text = "287"
        
        if(showP){
            showPopup()
        }
        // Do any additional setup after loading the view.
    }
    
    func showPopup(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "finishPopUp") as! PopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
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
