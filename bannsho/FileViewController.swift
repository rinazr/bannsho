//
//  FileViewController.swift
//  bannsho
//
//  Created by 鈴木莉夏 on 2017/01/15.
//  Copyright © 2017年 鈴木莉夏. All rights reserved.
//

import UIKit

class FileViewController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       table.dataSource = self
        
        let nib = UINib(nibName: "CustomCell", bundle:nil)
        table.register(nib, forCellReuseIdentifier: "customCell")
        
        
        performSegue(withIdentifier: "move1", sender: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        switch indexPath.row {
        case 0:
            cell.label1.text = "アルバム"
            cell.label2.text = ">"
            cell.imageB.image = UIImage(named: "4-rampo-b.png")
            break
        case 1:
            cell.label1.text = "ゴミ箱"
            cell.label2.text = ">"
            cell.imageB.image = UIImage(named: "暗殺教室.jpg")
            break
        default:
            cell.label1.text = "新規作成"
            cell.label2.text = ">"
            cell.imageB.image = UIImage(named: "暗殺教室０.jpg")
            break
        }
        
        
        return cell
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
