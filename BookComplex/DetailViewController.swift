//
//  DetailViewController.swift
//  BookComplex
//
//  Created by José Carlos Araújo on 10/06/2018.
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var minuteTxt: UITextView!
    
    var MeetingDate = ""
    var MeetingMinutes = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = "Reunião do dia " + MeetingDate
        minuteTxt.text = MeetingMinutes
        
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
