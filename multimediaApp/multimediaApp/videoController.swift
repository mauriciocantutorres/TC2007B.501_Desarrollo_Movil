//
//  videoController.swift
//  multimediaApp
//
//  Created by Alumno on 21/10/22.
//

import Foundation
import UIKit
import SwiftUI
import AVKit

class videoController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async{
            let path = Bundle.main.path(forResource: "sample", ofType: "mv4")
            let playerViewController = AVPlayerViewController()
            let videoURL = URL(fileURLWithPath: path!)
            let player = AVPlayer(url: videoURL)
            playerViewController.player = player
            
            self.present(playerViewController, animated: true, completion: nil)
        }
    }
}
