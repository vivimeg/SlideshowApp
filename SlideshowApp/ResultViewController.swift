//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 片桐めぐみ on 2021/02/26.
//  Copyright © 2021 megumi.katagiri. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 2画面目のimageViewを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var imageView: UIImageView!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    let photoname = ["photo1.jpeg", "photo2.jpeg", "photo3.jpeg"]
    var photonumber = 0
    var photoimage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //遷移元でクリックされた画像と同じ画像を読み込んで表示する
        imageView.image = photoimage
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButton(_ sender: Any) {
        // 初めの画面に戻る
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
