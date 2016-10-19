//
//  SettingsViewController.swift
//  tictactoe
//
//  Created by Chad Trador on 10/18/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var xredslider: UISlider!
    @IBOutlet weak var xGreenSlider: UISlider!
    @IBOutlet weak var xblueslider: UISlider!
    @IBOutlet weak var oredslider: UISlider!
    @IBOutlet weak var ogreenslider: UISlider!
    @IBOutlet weak var oblueslider: UISlider!
    @IBOutlet weak var xcolorview: UIView!
    @IBOutlet weak var ocolorview: UIView!
   
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
       var colorData = defaults.data(forKey: xColorKey)
        if let colorData = colorData {
            xcolorview.backgroundColor = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            // data (010101010101) to black
        } else {
            
            ocolorview.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            colorData = defaults.data(forKey: oColorKey)
            if let colorData = colorData {
                ocolorview.backgroundColor = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                
                // data (010101010101) to black
            } else {
                xcolorview.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                
            }
            let xColor = CIColor(color: xcolorview.backgroundColor!)
            xredslider.value = Float(xColor.red)
            xGreenSlider.value = Float(xColor.green)
            xblueslider.value = Float(xColor.blue)
            
            let oColor = CIColor(color: ocolorview.backgroundColor!)
            oredslider.value = Float(oColor.red)
            ogreenslider.value = Float(oColor.green)
            oblueslider.value = Float(oColor.blue)
            
            xcolorview.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).cgColor
            xcolorview.layer.borderWidth = 2
            xcolorview.layer.cornerRadius = 4
            xcolorview.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).cgColor
            xcolorview.layer.borderWidth = 2
            xcolorview.layer.cornerRadius = 4
        }
     
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        var colorData = NSKeyedArchiver.archivedData(withRootObject: xcolorview.backgroundColor)
        defaults.set(colorData, forKey: xColorKey)
        colorData = NSKeyedArchiver.archivedData(withRootObject: ocolorview.backgroundColor!)
        defaults.set(colorData, forKey: oColorKey)
        defaults.synchronize()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
//mark: IBActions


    @IBAction func xColorChanged(_ sender: AnyObject) {
        xcolorview.backgroundColor = UIColor(red: CGFloat(xredslider.value), green: CGFloat(xGreenSlider.value), blue: CGFloat(xblueslider.value), alpha: 1.0)
    }

    @IBAction func oColorChang(_ sender: AnyObject) {
           ocolorview.backgroundColor = UIColor(red: CGFloat(oredslider.value), green: CGFloat(ogreenslider.value), blue: CGFloat(oblueslider.value), alpha: 1.0)
    }

    @IBAction func restGameStats(_ sender: AnyObject) {
    
    //let defaults = UserDefaults.standard
        defaults.set(0, forKey: "xWins")
        defaults.set(0, forKey: "oWins")
        defaults.set(0, forKey: "draws")
    }


}
