//
//  ViewController.swift
//  ClassQuest
//
//  Created by Margaret Sit on 2/9/19.
//  Copyright © 2019 Margaret Sit. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import SCSDKBitmojiKit


class ViewController: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        print("in func")
        if let err = error {
            print(err)
        }
        else {
            print("sign in")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "KingdomViewController") as! KingdomViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
   

    @IBOutlet weak var SignInButton: GIDSignInButton!
    
    let iconView = SCSDKBitmojiIconView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().clientID = "434413809014-uoo69m6jhbnj76paghht2a07l1ac3gs4.apps.googleusercontent.com"
        let blueColor = UIColor(red : 0.21, green:0.71, blue : 0.63, alpha:1.0)
        view.backgroundColor = blueColor
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

//Code contained in this article's sample app
/*extension CameraViewController: SCSDKBitmojiStickerPickerViewControllerDelegate {
//    func bitmojiStickerPickerViewController(_ stickerPickerViewController: SCSDKBitmojiStickerPickerViewController, didSelectBitmojiWithURL bitmojiURL: String) {
//        bitmojiSelectionView?.removeFromSuperview()
//        if let image = UIImage.load(from: bitmojiURL) {
//            DispatchQueue.main.async {
                self.setImageToScene(image: image)
            }
        }
    }
    func bitmojiStickerPickerViewController(_ stickerPickerViewController: SCSDKBitmojiStickerPickerViewController, searchFieldFocusDidChangeWithFocus hasFocus: Bool) {
    }
}
*/
