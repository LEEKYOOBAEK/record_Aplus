//
//  AudioPlayViewController.swift
//  Record_Aplus
//
//  Created by MBP01 on 15/02/2019.
//  Copyright © 2019 MBP01. All rights reserved.
//

import UIKit

class AudioPlayViewController: UIViewController {

    var AudioPlayFile = ["a","b","c"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AudioPlayViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AudioPlayFile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AudioPlayCell", for: indexPath) as? AudioPlayTableViewCell
        cell?.AudioPlayFileNamelbl.text = AudioPlayFile[indexPath.row]
        
        return cell!
    }
    
    
    
    
    
}
