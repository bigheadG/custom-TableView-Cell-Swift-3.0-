//
//  ViewController.swift
//  customCell
//
//  Created by chenBighead on 2017/5/15.
//  Copyright © 2017年 joybien. All rights reserved.
//

// (1) new a project singleView
// (2) Drag TableView to MainView
// (3) Connect DataSource & Delegate to view Cnntroller
// (3.1) UITableViewDataSource,UITableViewDelegate to class
// (4) create viewControllerTableViewCell.swift & set identifier: "cell"
// (5) Drag IO image/label in viewControllerTableViewCell.swift
//       @IBOutlet weak var myImage: UIImageView!
//       @IBOutlet weak var myLabel: UILabel!
// (6) as tableView func
// (7) Run
//
import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    let list = ["panda","lion","fox"]
    
    //(6.0)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return list.count
    }

    //(6.1)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! ViewControllerTableViewCell
        cell.myImage.image = UIImage(named: list[indexPath.row] + ".jpg")
        cell.myLabel.text = list[indexPath.row]
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

