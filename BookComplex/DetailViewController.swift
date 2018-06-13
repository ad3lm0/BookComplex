//
//  DetailViewController.swift
//  BookComplex
//
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var minuteTxt: UITextView!
    
    var meetingDate = ""
    var meetingMinutes = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = "Reunião do dia " + meetingDate
        minuteTxt.text = meetingMinutes
        
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

}
