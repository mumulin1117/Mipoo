//
//  MMopFaceGalleryViewController.swift
//  MissdMgpoo
//
//  Created by mumu on 2025/5/20.
//

import UIKit

class MMopFaceGalleryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MMopFaceHeaderDelegate {
    func topLinUserViewPick(indexData: Dictionary<String, Any>) {
        
    }
    
    func tfaceShowViewPick(indexData: Dictionary<String, Any>) {
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        360
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        headerView
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mipoocee = tableView.dequeueReusableCell(withIdentifier: "MMopChokenCell", for: indexPath) as! MMopChokenCell
        return mipoocee
        
    }
    
    
    var headerView : MMopFaceHeader = Bundle.main.loadNibNamed("MMopFaceHeader", owner:nil, options: nil)?.first as! MMopFaceHeader
    // MMopFaceHeader.init()

    @IBOutlet weak var artisticWhispers: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        boldStatements()
    }

    func boldStatements()  {
        artisticWhispers.dataSource = self
        artisticWhispers.delegate = self
        artisticWhispers.rowHeight = 150
        artisticWhispers.register(UINib.init(nibName: "MMopChokenCell", bundle: nil), forCellReuseIdentifier: "MMopChokenCell")
       
        headerView.delegate = self
        artisticWhispers.tableHeaderView = headerView
    }

    @IBAction func illusions(_ sender: UIButton) {
    }
    

}
