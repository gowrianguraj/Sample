//
//  ViewController.swift
//  Sample
//
//  Created by gowri anguraj on 01/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import UIKit
import Alamofire
import CoreData


class ViewController: UIViewController {
    
    @IBOutlet var listTable : UITableView!
    var albumModels:[AlbumModels] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let swiftyParam:[String:AnyObject] = [:]
        
        ServiceParser.DoNetworkCall(view: self.view, url: "https://api.myjson.com/bins/kp2e8", parameter:swiftyParam) { (feedmode:[data]) in
            
            self.albumModels = feedmode.map({return AlbumModels(albums: $0)})
            
            self.listTable.dataSource = self
            self.listTable.delegate = self
            self.listTable.reloadData()
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.albumModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tablecell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        tablecell.albumModels = self.albumModels[indexPath.row]
        
        return tablecell
    }
   
}

