//
//  ViewController.swift
//  vaishnavi2
//
//  Created by Mac on 22/06/21.
//


import UIKit
   class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    
    
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
        
    var SnacksArray = ["misal-pav","vada pav","pav bhaji","pani puri","idli sambar","momes","sandwich","pizza","dhokla","seekh kabab"]
    
    var MainCourseMenu = ["PuranPoli","undhiyu","Rogan-josh","pongal","papaya-khar","litti-chowkha","biryani","fish-curry","appam","dal baati churma"]
    
    var stateArray = ["Pune","Ahmedabad"," Bengal", "kerala","chennai","rajsthan","Assam","Bihar","Gujrat","jodhpur"]
    
    var snacksimage = ["misal-pav","vada pav","pav bhaji","pani puri","idli sambar","momes","sandwich","pizza","dhokla","seekh kabab"]
    
    var MaincourseImageArray = ["PuranPoli","undhiyu","rogan-josh","pongal","papaya-khar","litti-chowkha","biryani","fish-curry","appam","dal-baati-churma"]
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        self.tableview.dataSource = self
            
            self.tableview.delegate = self
            
            self.tableview.register(UINib(nibName: "snacksTableViewCell", bundle: nil), forCellReuseIdentifier: "snacksTableViewCell")
        
           self.tableview.register(UINib(nibName: "lastRowTableViewCell", bundle: nil), forCellReuseIdentifier: "lastRowTableViewCell")
            
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
             200
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SnacksArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
    
        if(indexPath .row%2==0) {
        let snacksCell =
            self.tableview.dequeueReusableCell(withIdentifier: "snacksTableViewCell", for: indexPath) as! snacksTableViewCell
        
        snacksCell.snackslabel1.text = "\(SnacksArray[indexPath.row])"
        snacksCell.snackslabel2.text = "\(stateArray[indexPath.row])"
            snacksCell.snacksimage.image = UIImage (named:snacksimage[indexPath.row])
        
        
        return snacksCell
    
        
    }
        else{
        let  mainCourceCell = self.tableview.dequeueReusableCell(withIdentifier: "maincourceTableViewCell", for: indexPath) as! maincourceTableViewCell
        
            
        
        mainCourceCell.maincourcename.text = "\(MainCourseMenu[indexPath.row])"
        mainCourceCell.maincourcestate.text = "\(stateArray[indexPath.row])"
        mainCourceCell.maincourceimage.image = UIImage(named:MaincourseImageArray[indexPath.row])
    
        return mainCourceCell
    }
    
        }
        
        

        
    }



        
























