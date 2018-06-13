//
//  AddMeetingViewController.swift
//  BookComplex
//
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit

class AddMeetingViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.maximumDate = Date()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    var offsetY:CGFloat = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(AddMeetingViewController.keyboardFrameChangeNotification(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc func keyboardFrameChangeNotification(notification: Notification) {
        if let userInfo = notification.userInfo {
            let endFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect
            let animationDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Double ?? 0
            let animationCurveRawValue = (userInfo[UIKeyboardAnimationCurveUserInfoKey] as? Int) ?? Int(UIViewAnimationOptions.curveEaseInOut.rawValue)
            let animationCurve = UIViewAnimationOptions(rawValue: UInt(animationCurveRawValue))
            if let _ = endFrame, endFrame!.intersects(self.textView.frame) {
                self.offsetY = self.textView.frame.maxY - endFrame!.minY
                UIView.animate(withDuration: animationDuration, delay: TimeInterval(0), options: animationCurve, animations: {
                    self.textView.frame.origin.y = self.textView.frame.origin.y - self.offsetY
                }, completion: nil)
            } else {
                if self.offsetY != 0 {
                    UIView.animate(withDuration: animationDuration, delay: TimeInterval(0), options: animationCurve, animations: {
                        self.textView.frame.origin.y = self.textView.frame.origin.y + self.offsetY
                        self.offsetY = 0
                    }, completion: nil)
                }
            }
        }
    }
   
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func salvarBtn(_ sender: UIBarButtonItem) {
        
        let date : Date = datePicker.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let selectedDate = dateFormatter.string(from: date)
        meetingDate.append(selectedDate)
        meetingMinute.append(textView.text)
    
        let alertController = UIAlertController(title: "Informação", message:
            "Registro salvo com sucesso", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default,handler: nil))
        self.present(alertController, animated: true, completion: nil)
      
        textView.text = ""
        datePicker.reloadInputViews()
        
    }
 
    

}

