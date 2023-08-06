//
//  ViewController.swift
//  KeoBuaBao
//
//  Created by Nguyễn Ngọc Sơn on 03/08/2023.
//

import UIKit
var system = ["keo", "bua", "bao"]
var user = ""


class ViewController: UIViewController {
    @IBOutlet weak var viewHand: UIView!
    @IBOutlet weak var imageHand: UIImageView!
    @IBOutlet weak var buttonHand: UIButton!
    @IBOutlet weak var viewCut: UIView!
    @IBOutlet weak var imageCut: UIImageView!
    @IBOutlet weak var buttonCut: UIButton!
    @IBOutlet weak var viewHammer: UIView!
    @IBOutlet weak var imageHammer: UIImageView!
    @IBOutlet weak var buttonHammer: UIButton!
    @IBOutlet weak var selectUser: UIImageView!
    @IBOutlet weak var selectSystem: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    func setupView() {
        viewHand.layer.cornerRadius = viewHand.frame.size.width/2
        viewCut.layer.cornerRadius = viewHand.frame.size.width/2
        viewHammer.layer.cornerRadius = viewHand.frame.size.width/2
        imageHand.layer.cornerRadius = imageHand.frame.size.width/2
        imageCut.layer.cornerRadius = imageHand.frame.size.width/2
        imageHammer.layer.cornerRadius = imageHand.frame.size.width/2        selectUser.alpha = 0
        selectSystem.alpha = 0
        myLabel.text = "GO GO GO"
        
        
    }


    @IBAction func onHand(_ sender: Any) {
        user = "bao"
        selectUser.image = UIImage(named: "bao2")
        play()

    }
    @IBAction func onCut(_ sender: Any) {
        user = "keo"
        selectUser.image = UIImage(named: "keo")
        play()
    }
    @IBAction func onHammer(_ sender: Any) {
        user = "bua"
        selectUser.image = UIImage(named: "bua")
        play()
    }
    
    func play() {
        let optionSystem = system.randomElement()!
        
        selectUser.alpha = 1
        selectSystem.alpha = 1
        
        
        if optionSystem == "keo" {
            selectSystem.image = UIImage(named: "keo")
        }
        if optionSystem == "bua" {
            selectSystem.image = UIImage(named: "bua")
        }
        if optionSystem == "bao" {
            selectSystem.image = UIImage(named: "bao2")
        }
        
        if user == "bao" && optionSystem == "bua" || user == "bua" && optionSystem == "keo" || user == "keo" && optionSystem == "bao" {
            myLabel.text = "YOU WIN"
        } else if user == "bao" && optionSystem == "keo" || user == "bua" && optionSystem == "bao" || user == "keo" && optionSystem == "bua" {
            myLabel.text = "YOU LOSE"
        } else {
            myLabel.text = "DRAW"
        }
    }
}

