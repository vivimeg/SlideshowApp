//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 片桐めぐみ on 2021/02/23.
//  Copyright © 2021 megumi.katagiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let photoname = ["photo1.jpeg", "photo2.jpeg", "photo3.jpeg"]
    var photonumber = 0

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func tapAction(_ sender: Any) {
        //遷移先へ画像を渡す

    }
    
    //遷移先の画面から戻るsegueの設定
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    //画面を開いた時に表示される画像を設定する
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: photoname[0])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        // as! ResultViewController はUIViewControllerクラスからResultViewControllerクラスに変換する、という意味
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているimageに値を代入して渡す
        resultViewController.photoimage = imageView.image
    }
    
    //進むを押すと、次の画像へ移る
    @IBAction func forwardButton(_ sender: Any) {
        if photonumber == 0{
            photonumber = 1
            
            let imageName = photoname[1] //表示したい画像の名前
            let showImage = UIImage(named: imageName) //名前からUIImage showImageは、あくまでも画像
            imageView.image = showImage //imageViewに表示したいUIImageを表示
        }
        
        else if photonumber == 1{
            photonumber = 2
            
            let imageName = photoname[2]
            let showImage = UIImage(named: imageName)
            imageView.image = showImage
        }
        
        else if photonumber == 2{
            photonumber = 0
            
            let imageName = photoname[0]
            let showImage = UIImage(named: imageName)
            imageView.image = showImage
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        //戻るを押すと、前の画像へ移る
        if photonumber == 0{
            photonumber = 2
                
            let imageName = photoname[2] //表示したい画像の名前
            let showImage = UIImage(named: imageName) //名前からUIImage showImageは、あくまでも画像
                imageView.image = showImage //imageViewに表示したいUIImageを表示
            }
            
            else if photonumber == 2{
                photonumber = 1
                
                let imageName = photoname[1]
                let showImage = UIImage(named: imageName)
                imageView.image = showImage
            }
            
            else if photonumber == 1{
                photonumber = 0
                
                let imageName = photoname[0]
                let showImage = UIImage(named: imageName)
                imageView.image = showImage
            }
    }
    
    var playing = false
    var timer:Timer!
    @objc func updateTimer(_ timer: Timer) {
        if photonumber == 0{
            photonumber = 1
            
            let imageName = photoname[1] //表示したい画像の名前
            let showImage = UIImage(named: imageName) //名前からUIImage showImageは、あくまでも画像
            imageView.image = showImage //imageViewに表示したいUIImageを表示
        }
        
        else if photonumber == 1{
            photonumber = 2
            
            let imageName = photoname[2]
            let showImage = UIImage(named: imageName)
            imageView.image = showImage
        }
        
        else if photonumber == 2{
            photonumber = 0
            
            let imageName = photoname[0]
            let showImage = UIImage(named: imageName)
            imageView.image = showImage
        }
    }
    
    @IBOutlet weak var susumuButton: UIButton!
    
    @IBOutlet weak var modoru: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func stopButton(_ sender: Any) {
        //タイマーが動いていないなら
        if playing == false{
            // タイマーを動かす（画像を進める関数を2秒ごとに実行するタイマーを作成）
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_ :)), userInfo: nil, repeats: true)
            // 進むボタンを使用不可
            susumuButton.isEnabled = false
            //戻るボタンを使用不可
            modoru.isEnabled = false
            // 再生ボタンを停止ボタンに変更
            playButton.setTitle("停止", for: .normal)
            
            //　再生中
            playing = true
        }
        // タイマーが動いていないならの他の場合
        else if playing == true{
          // 停止ボタンを再生ボタンに変更
            playButton.setTitle("再生", for: .normal)
          // 進むボタンを使用可
            susumuButton.isEnabled = true
          // 戻るボタンを使用可
            modoru.isEnabled = true
          // タイマーを止める
            timer.invalidate()
            timer = nil
            // 再生中
            playing = false
        }
            
    }
    }
    

