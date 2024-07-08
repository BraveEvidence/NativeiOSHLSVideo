//
//  ViewController.swift
//  myiosproject
//
//  Created by Student on 18/06/24.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    let playerViewController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func buttonTapped() {
        print("Button was tapped!")
        let player = AVPlayer(url: URL(string: "https://sample.vodobox.net/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8")!)
        playerViewController.player = player
        self.present(playerViewController, animated: true, completion: nil)
        player.play()
    }
    
    
}

