//
//  ViewController.swift
//  BookComplex
//
//  Created by José Carlos Araújo on 10/06/2018.
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit

var MeetingDate = ["05/07/2017","05/08/2017","05/09/2017","05/10/2017","05/11/2017","05/12/2017","05/1/2018","05/02/2018","25/03/2018","05/04/2018","17/04/2018","05/05/2018","23/05/2018","05/06/2018"];

var MeetingMinutes = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius ante at quam gravida, quis condimentum mauris iaculis. Cras purus purus, mattis sit amet dictum et, congue eu risus. Cras dui eros, maximus in laoreet sit amet, pretium ac orci. Quisque vestibulum efficitur risus ac ultricies. Duis congue metus nec risus maximus elementum. Quisque ultricies sed nulla eu suscipit. Quisque tortor ex, mollis et dapibus a, blandit vel nisi. In sem elit, tristique eleifend volutpat in, tincidunt et sem. Nullam ultricies venenatis purus a auctor. Integer eu dapibus est. Sed vel ornare sem. Duis bibendum sit amet leo sit amet hendrerit. Nulla hendrerit tellus eget libero laoreet, quis posuere nibh sollicitudin. Vivamus vel convallis augue.Nunc venenatis, diam vel tristique lobortis, lectus nisi volutpat diam, sit amet convallis velit neque nec sem. Cras metus nibh, maximus efficitur felis in, ullamcorper finibus massa. Proin fringilla justo non odio dapibus egestas. Aenean pellentesque pulvinar turpis et fringilla. Aenean viverra, augue at tempus elementum, erat turpis porttitor augue, non pretium felis libero nec nisl. Praesent ultricies nulla mauris, sit amet dignissim ex fermentum quis. Phasellus fringilla lacus lectus, at molestie elit lobortis et. Maecenas venenatis lacus ac augue semper gravida. Sed finibus sit amet nisi vitae ultrices. Nam scelerisque pellentesque bibendum. Curabitur aliquet, elit id facilisis tristique, neque risus porttitor turpis, sed venenatis orci turpis et neque. Ut ultrices dolor erat, ultricies dignissim lectus commodo ac. Mauris mollis, lacus vel blandit interdum, purus leo tempus diam, vel ornare eros sapien et orci. Nulla ac ullamcorper nisl. Nulla dapibus odio in augue fringilla faucibus consequat non dolor. Ut ut sagittis risus, sed tempor erat.",
    "Aliquam eu hendrerit tortor. Morbi semper mauris sapien, id pretium nunc volutpat at. Vestibulum ut laoreet arcu, a fermentum metus. Fusce aliquet mollis justo pellentesque placerat. Aenean non tellus rutrum, semper nulla non, placerat risus. Nunc magna purus, cursus eget diam id, sollicitudin placerat orci. Donec a mi semper, suscipit nulla ut, sollicitudin ante.",
    "Sed tincidunt urna vel quam ullamcorper molestie nec vel urna. Donec sit amet varius odio, at faucibus lacus. In hac habitasse platea dictumst. Praesent eget lobortis ligula. Duis sit amet libero quis leo sollicitudin tempor. Morbi efficitur, dolor a sodales commodo, nisl tellus mattis odio, vel feugiat tortor erat tincidunt elit. Vivamus a turpis ligula. Pellentesque lacinia est massa, sit amet tincidunt nisi tristique quis. Fusce scelerisque lorem id iaculis bibendum. Integer nec vehicula quam. Aenean dapibus consequat nisi, id sollicitudin sapien porttitor quis. Sed quis ligula rhoncus, lacinia urna at, bibendum est. Quisque commodo, est et fermentum lobortis, mauris risus consequat tortor, mollis egestas eros sapien eu ipsum.",
    "Vestibulum et congue ante. Nunc gravida eleifend neque, a vestibulum ex vehicula non. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec elementum tempor dui vitae pulvinar. Cras interdum lacus nec tortor scelerisque tincidunt. Phasellus hendrerit, risus sed laoreet tempor, diam metus scelerisque nisl, in porta massa enim sit amet ligula. Duis ac lectus placerat tortor semper interdum ac id lacus. Suspendisse pellentesque dolor ac aliquam molestie. Vestibulum id turpis ante. Integer fringilla ut urna sed accumsan. Duis vel lectus sed magna feugiat placerat sed hendrerit mi.",
    "Donec in eros porta turpis tempus condimentum. In tincidunt ipsum sit amet consectetur fringilla. Duis consectetur arcu non fringilla ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et euismod neque. Suspendisse porttitor hendrerit nunc ac dignissim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla viverra nulla ac elit bibendum ultricies. Sed blandit facilisis ex, at tempus nunc semper vitae. Nulla nec nisi fermentum risus lobortis varius id ut dui. Nulla commodo mi lacus, non malesuada mauris scelerisque eu.",
    "Vivamus rhoncus, lectus in convallis lacinia, urna tellus vestibulum neque, id venenatis felis turpis id mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris vitae mattis metus, at iaculis est. Nunc gravida cursus sapien sed placerat. Nunc neque neque, faucibus vel lacinia vel, finibus et massa. Morbi et nibh nec sapien ultricies fermentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce euismod, purus vel dapibus lobortis, orci risus porta metus, in tincidunt enim risus quis purus. Cras porta blandit velit, non ullamcorper diam vulputate id. Sed luctus viverra diam, id luctus sapien hendrerit a. Vestibulum tellus ante, lobortis et nisl sed, fringilla tincidunt quam.",
    "Suspendisse at varius neque. Donec sagittis non nibh egestas molestie. Nam metus felis, dictum id placerat eu, rhoncus id lorem. Cras dui nibh, elementum at pharetra in, molestie sit amet ex. Donec a pulvinar magna, a vulputate ipsum. Integer vitae erat eget urna fringilla tempor. Quisque eu tellus vel dolor euismod sollicitudin vel ultricies erat. Proin et urna eu nulla vestibulum accumsan sed a metus. Cras sit amet neque a sapien luctus vehicula non at tellus. Curabitur at bibendum ipsum. Phasellus posuere ante eu nulla interdum, non suscipit elit auctor. Mauris a aliquam magna, id scelerisque nisi. Praesent ante dolor, aliquet quis posuere quis, dictum a libero. Vivamus ut justo quis mi feugiat laoreet. Nullam venenatis vel dolor sed tempus.",
    "Vivamus eu nulla pellentesque, tempus tortor sed, ultrices dolor. Etiam semper quis massa a dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi varius euismod ullamcorper. Praesent id massa nunc. Donec nulla urna, congue quis nibh at, pulvinar mattis ex. Morbi iaculis ipsum velit, in consequat ex laoreet vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam enim ligula, pulvinar id libero eget, facilisis eleifend nulla. Maecenas hendrerit varius turpis, eu posuere nisl. Vivamus nec maximus risus, eu luctus neque. Pellentesque scelerisque, justo ut eleifend porta, ipsum lacus faucibus mi, ac euismod lorem neque nec urna. In commodo varius dolor, eu sollicitudin odio mattis id. Phasellus ut dolor eros. Integer viverra sem nisl, et facilisis nulla condimentum condimentum.",
    "Aliquam blandit nibh eget ultrices laoreet. Praesent quis erat nec dolor ornare venenatis nec eget odio. Nam nec orci ut ante interdum convallis in ullamcorper lectus. Vivamus sit amet ex sed orci pharetra ornare eu quis leo. Suspendisse sagittis magna in tellus fermentum, quis bibendum ex bibendum. Sed vulputate lacus sit amet nibh porttitor dictum. Pellentesque sed tempus ante, placerat mollis nisi. Donec ex turpis, pharetra eu nisi ut, consectetur egestas massa. Morbi rutrum risus ac massa fermentum pulvinar. Phasellus gravida erat non lacus congue, sit amet condimentum lacus tempor. Nam sit amet pharetra enim. Quisque dictum, diam nec placerat interdum, dolor nisi mattis massa, at commodo ante sem quis justo. Sed pretium, neque in pretium scelerisque, enim nisi placerat metus, at fringilla odio est a ex. Fusce feugiat consectetur ultricies. Curabitur commodo blandit fermentum.",
    "Nunc venenatis, diam vel tristique lobortis, lectus nisi volutpat diam, sit amet convallis velit neque nec sem. Cras metus nibh, maximus efficitur felis in, ullamcorper finibus massa. Proin fringilla justo non odio dapibus egestas. Aenean pellentesque pulvinar turpis et fringilla. Aenean viverra, augue at tempus elementum, erat turpis porttitor augue, non pretium felis libero nec nisl. Praesent ultricies nulla mauris, sit amet dignissim ex fermentum quis. Phasellus fringilla lacus lectus, at molestie elit lobortis et. Maecenas venenatis lacus ac augue semper gravida. Sed finibus sit amet nisi vitae ultrices. Nam scelerisque pellentesque bibendum. Curabitur aliquet, elit id facilisis tristique, neque risus porttitor turpis, sed venenatis orci turpis et neque. Ut ultrices dolor erat, ultricies dignissim lectus commodo ac. Mauris mollis, lacus vel blandit interdum, purus leo tempus diam, vel ornare eros sapien et orci. Nulla ac ullamcorper nisl. Nulla dapibus odio in augue fringilla faucibus consequat non dolor. Ut ut sagittis risus, sed tempor erat.",
    "Sed elit dolor, condimentum sed cursus nec, laoreet ac urna. Sed pulvinar interdum erat sed scelerisque. Donec a enim malesuada, sagittis lectus ac, efficitur leo. Nunc eget volutpat enim, in tincidunt justo. Ut semper velit quis arcu fringilla, eu blandit augue facilisis. Curabitur tellus sapien, maximus et erat eget, commodo interdum justo. Proin viverra ultrices cursus. In porttitor ultrices elit, et commodo dolor condimentum cursus.",
    "Integer fermentum gravida orci, vitae blandit lacus vehicula at. Curabitur orci nisl, rhoncus posuere nisi non, accumsan pulvinar nibh. Etiam vestibulum laoreet blandit. Donec interdum eros id dignissim mattis. Curabitur ac elit nisi. Aliquam tempor elit et odio feugiat, vel feugiat dolor volutpat. Vivamus et feugiat nibh. Morbi et mattis dui, aliquam molestie urna. Suspendisse eget gravida elit, sit amet consequat orci. Etiam sit amet luctus est. Quisque viverra, nibh vel imperdiet imperdiet, lectus leo scelerisque augue, iaculis feugiat mi mauris nec lacus. Quisque ornare tincidunt mauris, a ultrices ligula dictum eu. Sed at mauris nec lorem malesuada mattis. Donec sit amet pulvinar mauris.",
    "Morbi magna augue, vestibulum at quam vel, ultrices sodales nibh. Fusce vehicula, tellus sit amet ornare cursus, nibh diam vehicula nunc, vel mollis lectus sem posuere ante. Nam viverra id nisl quis efficitur. Etiam est urna, vestibulum at maximus id, eleifend a orci. Cras vel enim fringilla quam convallis accumsan. Sed et dapibus tellus, ac volutpat est. Nullam pretium aliquet tristique. Nam commodo orci vitae dui sagittis interdum. Morbi suscipit magna massa, ac placerat metus porta ac.",
    "Ut eget orci sit amet elit ultricies ullamcorper ac et dolor. Vivamus sit amet purus tempor orci efficitur imperdiet. Phasellus vel nibh in quam lacinia pulvinar. Sed metus elit, vehicula non porttitor a, interdum nec nulla. Vestibulum at massa eget tortor tristique luctus. Integer in finibus mi, sed faucibus mauris. Aliquam condimentum eget lacus vitae vulputate. Donec ut massa id felis interdum pellentesque. Vestibulum pellentesque tortor sit amet pretium pellentesque. Nunc pretium, sapien a pulvinar sollicitudin, mi turpis ornare eros, et consectetur massa tellus ut tortor. Nullam vitae est non elit accumsan porttitor. Pellentesque in commodo diam. Duis quam augue, sodales quis consectetur gravida, sagittis eu sapien."];

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
        return MeetingDate.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        
        var reverseMeetingDate = [String]()
        
        for arrayIndex in 0..<MeetingDate.count {
            reverseMeetingDate.append(MeetingDate[(MeetingDate.count - 1) - arrayIndex])
        }
        
        Cell.TitleLbl.text = reverseMeetingDate[indexPath.row]
        return Cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        var reverseMeetingDate = [String]()
        var reverseMeetingMinutes = [String]()
        
        for arrayIndex in 0..<MeetingDate.count {
            reverseMeetingDate.append(MeetingDate[(MeetingDate.count - 1) - arrayIndex])
            reverseMeetingMinutes.append(MeetingMinutes[(MeetingMinutes.count - 1) - arrayIndex])
        }
        
        
        vC?.MeetingDate = reverseMeetingDate[indexPath.row]
        vC?.MeetingMinutes = reverseMeetingMinutes[indexPath.row]
        
        self.navigationController?.pushViewController(vC!, animated: true)
    }
    
}



