//
//  ViewController.swift
//  BookComplex
//
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit



var meetingMinute:[String] = InitVariables.sMeetingMinutes
var meetingDate:[String] = InitVariables.sMeetingDate

class ViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        self.tableView.reloadData()
        
    }

}



extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meetingDate.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        
        var reverseMeetingDate = [String]()
        
        for arrayIndex in 0..<meetingDate.count {
            reverseMeetingDate.append(meetingDate[(meetingDate.count - 1) - arrayIndex])
        }
        
        Cell.TitleLbl.text = reverseMeetingDate[indexPath.row]
        return Cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        var reverseMeetingDate = [String]()
        var reverseMeetingMinutes = [String]()
        
        for arrayIndex in 0..<meetingDate.count {
            reverseMeetingDate.append(meetingDate[(meetingDate.count - 1) - arrayIndex])
            reverseMeetingMinutes.append(meetingMinute[(meetingMinute.count - 1) - arrayIndex])
        }
        
        
        vC?.meetingDate = reverseMeetingDate[indexPath.row]
        vC?.meetingMinutes = reverseMeetingMinutes[indexPath.row]
        
        self.navigationController?.pushViewController(vC!, animated: true)
    }
    
}



