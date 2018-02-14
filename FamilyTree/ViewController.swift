//
//  ViewController.swift
//  FamilyTree
//
//  Created by Emily on 2/13/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Images
    @IBOutlet weak var grandma: UIImageView!
    @IBOutlet weak var grandpa: UIImageView!
    @IBOutlet weak var aunt1: UIImageView!
    @IBOutlet weak var uncle: UIImageView!
    @IBOutlet weak var aunt2: UIImageView!
    @IBOutlet weak var secondUncle1: UIImageView!
    @IBOutlet weak var secondUncle2: UIImageView!
    @IBOutlet weak var daughter1: UIImageView!
    @IBOutlet weak var son1: UIImageView!
    @IBOutlet weak var daughter2: UIImageView!
    @IBOutlet weak var son2: UIImageView!
    @IBOutlet weak var girl: UIImageView!
    @IBOutlet weak var boy: UIImageView!
    @IBOutlet weak var baby: UIImageView!
    @IBOutlet weak var girlsSpouse: UIImageView!
    
    //Buttons
    @IBOutlet weak var startBtnOutlet: UIButton!
    @IBOutlet weak var plusBtnOutlet: UIButton!
    @IBOutlet weak var minusBtnOutlet: UIButton!
    
    //heart images
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    @IBOutlet weak var heart4: UIImageView!
    @IBOutlet weak var brokenHeart: UIImageView!
    
    //Labels
    @IBOutlet weak var lucy: UILabel!
    @IBOutlet weak var bill: UILabel!
    @IBOutlet weak var jeff: UILabel!
    @IBOutlet weak var tina: UILabel!
    @IBOutlet weak var bob: UILabel!
    @IBOutlet weak var sarah: UILabel!
    @IBOutlet weak var tom: UILabel!
    @IBOutlet weak var sam: UILabel!
    @IBOutlet weak var lilly: UILabel!
    @IBOutlet weak var jesse: UILabel!
    @IBOutlet weak var liz: UILabel!
    @IBOutlet weak var larry: UILabel!
    @IBOutlet weak var casey: UILabel!
    @IBOutlet weak var joel: UILabel!
    @IBOutlet weak var avery: UILabel!
    
    
    
    var levelOfTree = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lucy.isHidden = true
        bill.isHidden = true
        jeff.isHidden = true
        tina.isHidden = true
        bob.isHidden = true
        sarah.isHidden = true
        tom.isHidden = true
        sam.isHidden = true
        lilly.isHidden = true
        jesse.isHidden = true
        liz.isHidden = true
        larry.isHidden = true
        casey.isHidden = true
        joel.isHidden = true
        avery.isHidden = true
        
    }
    
    @IBAction func startBtnPressed(_ sender: Any) {
        if(levelOfTree != -1){
            grandma.image = UIImage(named: "lady3.jpg")
            grandpa.image = UIImage(named: "male2.png")
            lucy.isHidden = false
            bill.isHidden = false
            plusBtnOutlet.isHidden = false
            minusBtnOutlet.isHidden = false
            levelOfTree = 1
            startBtnOutlet.setTitle("It started out with Bill and Lucy", for: .normal)
        }else{
            //do nothing
        }
        
    }
    @IBAction func minusBtnPressed(_ sender: Any) {
        switch(levelOfTree){
        case 1:
            grandma.image = nil
            grandpa.image = nil
            lucy.isHidden = true
            bill.isHidden = true
            startBtnOutlet.setTitle("Start", for: .normal)
            plusBtnOutlet.isHidden = true
            minusBtnOutlet.isHidden = true
            levelOfTree = -1
            
            break
        case 2:
            aunt1.image = nil
            aunt2.image = nil
            uncle.image = nil
            tina.isHidden = true
            bob.isHidden = true
            sarah.isHidden = true
            levelOfTree = 1
            startBtnOutlet.setTitle("It started out with Bill and Lucy", for: .normal)
            break
        case 3:
            heart1.image = nil
            heart2.image = nil
            brokenHeart.image = nil
            secondUncle1.image = nil
            secondUncle2.image = nil
            aunt1.image = UIImage(named: "daughter.png")
            uncle.image = UIImage(named: "boy2.png")
            aunt2.image = UIImage(named: "girl2.png")
            grandma.image = UIImage(named: "lady3.png")
            grandpa.image = UIImage(named: "male2.png")
            jeff.isHidden = true
            tom.isHidden = true
            heart1.image = nil
            heart2.image = nil
            brokenHeart.image = nil
            startBtnOutlet.setTitle("Bill and Lucy had kids, Tina, Bob, and Sarah.", for: .normal)
            levelOfTree = 2
            break
        case 4:
            daughter1.image = nil
            daughter2.image = nil
            son1.image = nil
            son2.image = nil
            lilly.isHidden = true
            jesse.isHidden = true
            liz.isHidden = true
            larry.isHidden = true
            startBtnOutlet.setTitle("Tina and Sarah grew up and found spouses, except for poor Bob.", for: .normal)
            levelOfTree = 3
            break
        case 5:
            girlsSpouse.image = nil
            daughter1.image = UIImage(named:"daughter.png")
            son1.image = UIImage(named:"boy2.png")
            daughter2.image = UIImage(named:"girl2.png")
            son2.image = UIImage(named:"boy3.jpg")
            heart3.image = nil
            heart4.image = nil
            sam.isHidden = true
            levelOfTree = 4
            startBtnOutlet.setTitle("Tina and Jeff had 2 kids along with Sarah and Tom. Poor Bob is still forever alone.", for: .normal)
            break
        case 6:
            girl.image = nil
            boy.image = nil
            baby.image = nil
            casey.isHidden = true
            joel.isHidden = true
            avery.isHidden = true
            levelOfTree = 5
            startBtnOutlet.setTitle("Bill and Lucy passed away. Lilly found a spouse and wanted a family, Liz found out she couldn't have kids.", for: .normal)
            break
        default:break
        }
    }
    
    @IBAction func plusBtnPressed(_ sender: Any) {
        switch(levelOfTree){
        case 1:
            aunt1.image = UIImage(named: "daughter.png")
            uncle.image = UIImage(named: "boy2.png")
            aunt2.image = UIImage(named: "girl2.png")
            tina.isHidden = false
            bob.isHidden = false
            sarah.isHidden = false
            levelOfTree = 2
            startBtnOutlet.setTitle("Bill and Lucy had kids, Tina, Bob, and Sarah.", for: .normal)
            break
        case 2:
            grandma.image = UIImage(named: "grandma.png")
            grandpa.image = UIImage(named: "grandpa.png")
            aunt1.image = UIImage(named: "lady2.png")
            uncle.image = UIImage(named: "uncle2.png")
            aunt2.image = UIImage(named: "lady.png")
            secondUncle1.image = UIImage(named: "uncle.png")
            secondUncle2.image = UIImage(named:"teen.png")
            heart1.image = UIImage(named: "heart.png")
            heart2.image  = UIImage(named: "heart.png")
            brokenHeart.image = UIImage(named: "brokenHeart.png")
            jeff.isHidden = false
            tom.isHidden = false
            levelOfTree = 3
            startBtnOutlet.setTitle("Tina and Sarah grew up and found spouses, except for poor Bob.", for: .normal)
            break
        case 3:
            daughter1.image = UIImage(named:"daughter.png")
            son1.image = UIImage(named:"boy2.png")
            daughter2.image = UIImage(named:"girl2.png")
            son2.image = UIImage(named:"boy3.jpg")
            lilly.isHidden = false
            jesse.isHidden = false
            liz.isHidden = false
            larry.isHidden = false
            startBtnOutlet.setTitle("Tina and Jeff had 2 kids along with Sarah and Tom. Poor Bob is still forever alone.", for: .normal)
            levelOfTree = 4
            
            break
        case 4:
            grandma.image = UIImage(named: "tombstone.png")
            grandpa.image = UIImage(named: "tombstone.png")
            aunt1.image = UIImage(named: "grandma.png")
            uncle.image = UIImage(named: "grandpa.png")
            aunt2.image = UIImage(named: "grandma.png")
            secondUncle1.image = UIImage(named: "grandpa.png")
            secondUncle2.image = UIImage(named:"grandpa.png")
            secondUncle1.image = UIImage(named: "uncle.png")
            secondUncle2.image = UIImage(named:"grandpa.png")
            daughter1.image = UIImage(named:"lady3.jpg")
            son1.image = UIImage(named:"male2.png")
            daughter2.image = UIImage(named:"lady.png")
            son2.image = UIImage(named:"teen.png")
            girlsSpouse.image = UIImage(named:"male3.png")
            sam.isHidden = false
            heart3.image = UIImage(named: "heart.png")
            heart4.image = UIImage(named: "brokenHeart.png")
            startBtnOutlet.setTitle("Bill and Lucy passed away. Lilly found a spouse and wanted a family, Liz found out she couldn't have kids.", for: .normal)
            levelOfTree = 5
            break
        case 5:
            girl.image = UIImage(named:"daughter.png")
            boy.image = UIImage(named: "boy2.png")
            baby.image = UIImage(named: "baby.png")
            casey.isHidden = false
            joel.isHidden = false
            avery.isHidden = false
            startBtnOutlet.setTitle("Lily and Sam had two kids, Liz decieded to adopt a baby.", for: .normal)
            levelOfTree = 6
            break
        default:
            break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

