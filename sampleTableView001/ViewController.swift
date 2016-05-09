//
//  ViewController.swift
//  sampleTableView001
//
//  Created by AI Matsubara on 2016/05/06.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //表示する行数の決定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 //10行表示
    }
    
    //行に表示する内容をセット（表示するセルの中身）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        
        cell.textLabel!.text = "\(indexPath.row)行目"
        //セルの中に時を表示する
        //index.Pathは今、何行目のデータを出そうとしているかの行データの情報が詰まってる
        //.rowは行番号
        //
        return cell
        
        }
    
    
    //行を選択された時に行う処理
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath){
        print("\(indexPath.row)行目を選択")
    }
        
        //ステータスバーを非表示にする
    override func prefersStatusBarHidden() -> Bool {
            return true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

