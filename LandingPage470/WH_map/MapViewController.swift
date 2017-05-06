//
//  ViewController.swift
//  WH_map
//
//  Created by Eugene Rivera on 4/24/17.
//  Copyright © 2017 Eugene Rivera. All rights reserved.
//

import UIKit

class WHviewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    var alertController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "WH_seating.jpg")
        imageView.isUserInteractionEnabled = true
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        scrollView.delegate = self
        
        
        let balconySideWestRowA = makeButton(x: 14, y: 220, widthHeight: 15)
        let coralCircleWestRowB = makeButton(x: 48, y: 220, widthHeight: 10)
        let coralCircleWestRowA = makeButton(x: 58, y: 200, widthHeight: 10)
        let parterreBox1 = makeButton(x: 95, y: 245, widthHeight: 10)
        let parterreBox3 = makeButton(x: 95, y: 295, widthHeight: 10)
        let parterreBox5 = makeButton(x: 95, y: 320, widthHeight: 10)
        let parterreBox7 = makeButton(x: 95, y: 370, widthHeight: 10)
        let parterreBox9 = makeButton(x: 95, y: 395, widthHeight: 10)
        let parterreBox11 = makeButton(x: 95, y: 450, widthHeight: 10)
        let coralCircleStage = makeButton(x: 180, y: 70, widthHeight: 15)
        let OrchestraA_F = makeButton(x: 180, y: 250, widthHeight: 15)
        let OrchestraG_N = makeButton(x: 180, y: 310, widthHeight: 15)
        let OrchestraO_V = makeButton(x: 180, y: 380, widthHeight: 15)
        let OrchestraW_CC = makeButton(x: 180, y: 450, widthHeight: 15)
        let balconyCenter = makeButton(x: 180, y: 535, widthHeight: 15)
        let parterreBox2 = makeButton(x: 270, y: 245, widthHeight: 10)
        let parterreBox4 = makeButton(x: 270, y: 295, widthHeight: 10)
        let parterreBox6 = makeButton(x: 270, y: 320, widthHeight: 10)
        let parterreBox8 = makeButton(x: 270, y: 370, widthHeight: 10)
        let parterreBox10 = makeButton(x: 270, y: 395, widthHeight: 10)
        let parterreBox12 = makeButton(x: 270, y: 450, widthHeight: 10)
        let coralCircleEastRowB = makeButton(x: 317, y: 220, widthHeight: 10)
        let coralCircleEastRowA = makeButton(x: 307, y: 200, widthHeight: 10)
        let balconySideEastRowA =  makeButton(x: 346, y: 220, widthHeight: 15)
        balconySideWestRowA.tag = 1
        coralCircleWestRowB.tag = 2
        coralCircleWestRowA.tag = 3
        parterreBox1.tag = 4
        parterreBox3.tag = 5
        parterreBox5.tag = 6
        parterreBox7.tag = 7
        parterreBox9.tag = 8
        parterreBox11.tag = 9
        coralCircleStage.tag = 10
        OrchestraA_F.tag = 11
        OrchestraG_N.tag = 12
        OrchestraO_V.tag = 13
        OrchestraW_CC.tag = 14
        balconyCenter.tag = 15
        parterreBox2.tag = 16
        parterreBox4.tag = 17
        parterreBox6.tag = 18
        parterreBox8.tag = 19
        parterreBox10.tag = 20
        parterreBox12.tag = 21
        coralCircleEastRowB.tag = 22
        coralCircleEastRowA.tag = 23
        balconySideEastRowA.tag = 24
        imageView.addSubview(balconySideWestRowA)
        imageView.addSubview(coralCircleWestRowB)
        imageView.addSubview(coralCircleWestRowA)
        imageView.addSubview(parterreBox1)
        imageView.addSubview(parterreBox3)
        imageView.addSubview(parterreBox5)
        imageView.addSubview(parterreBox7)
        imageView.addSubview(parterreBox9)
        imageView.addSubview(parterreBox11)
        imageView.addSubview(coralCircleStage)
        imageView.addSubview(OrchestraA_F)
        imageView.addSubview(OrchestraG_N)
        imageView.addSubview(OrchestraO_V)
        imageView.addSubview(OrchestraW_CC)
        imageView.addSubview(balconyCenter)
        imageView.addSubview(parterreBox2)
        imageView.addSubview(parterreBox4)
        imageView.addSubview(parterreBox6)
        imageView.addSubview(parterreBox8)
        imageView.addSubview(parterreBox10)
        imageView.addSubview(parterreBox12)
        imageView.addSubview(coralCircleEastRowB)
        imageView.addSubview(coralCircleEastRowA)
        imageView.addSubview(balconySideEastRowA)
    }
    
    func makeButton(x: Double, y: Double, widthHeight: Double) -> UIButton {
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: x, y: y, width: widthHeight, height: widthHeight)
        button.backgroundColor = UIColor.green
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        return button
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return imageView
    }
    
    func didTapButton(_ button: UIButton) {
        var message = ""
        switch button.tag{
            case 1: message += "Balcony Side West\n\n Row A: 2, 5, 15, 16, 50, 61, 62, 63"
            case 2: message += "Coral Circle West\n\n Row B: 1, 3, 20, 21, 22, 30, 32, 40"
            case 3: message += "Coral Circle West\n\n Row A: 2, 3, 4, 30, 35, 39, 45, 48"
            case 4: message += "Parterre Boxes\n\n Box 1: 1, 4, 8"
            case 5: message += "Parterre Boxes\n\n Box 3: 2, 3, 5, 7"
            case 6: message += "Parterre Boxes\n\n Box 5: 3, 6, 8"
            case 7: message += "Parterre Boxes\n\n Box 7: 3"
            case 8: message += "Parterre Boxes\n\nBox 9: 1, 2"
            case 9: message += "Parterre Boxes\n\n Box 11: 1, 2, 3, 4, 5"
            case 10: message += "Coral Circle Stage\n\n Row A: 101, 102, 105, 108, 119, 126\n" +
                                                       "Row B: 111, 112, 115 \n" +
                                                       "Row C: 105, 106, 111, 115, 116, 117, 119, 120, 121\n" +
                                                       "Row D: 107, 113, 115, 118, 119       "
            case 11: message += "Orchestra\n\n Row A: 1, 2, 5, 6, 9\n" +
                                              "Row B: 5, 7, 101, 105, 108, 111, 114\n" +
                                              "Row C: 3, 5, 8, 10, 106, 108\n" +
                                              "Row D: 5, 101, 104, 108\n" +
                                              "Row E: 110\n" +
                                              "Row F: 102, 104, 110, 112"
            case 12: message += "Orchestra\n\n Row G: 2, 4, 7, 104, 105, 109, 110\n" +
                                              "Row H: 1, 4, 5, 9, 101, 103, 107\n" +
                                              "Row I: 4, 8, 105\n" +
                                              "Row J: 9, 10, 11, 103, 104, 109\n" +
                                              "Row K: 1, 3, 4, 5, 7, 10, 104, 108, 109, 110, 111\n" +
                                              "Row L: 4, 8, 9, 103, 105, 109\n" +
                                              "Row M: 2, 108, 109, 110\n" +
                                              "Row N: 1, 3, 4, 8, 10, 105, 106, 107, 108"
            case 13: message += "Orchestra\n\n Row O: 1, 2, 8 \n" +
                                              "Row P: 101, 102, 103 \n" +
                                              "Row Q: 8 ,9, 10, 11, 109\n" +
                                              "Row R: 1, 2, 103, 104, 108, 111\n" +
                                              "Row S: 1, 5, 9\n" +
                                              "Row T: 101, 109\n" +
                                              "Row U: 12, 101, 108\n" +
                                              "Row V: 106, 107, 111, 114"
            case 14: message += "Orchestra\n\n Row W: 4, 7, 101\n" +
                                              "Row X: 112, 113, 114\n" +
                                              "Row Y: 1, 5, 9, 104, 109\n" +
                                              "Row Z: 9, 10, 11, 107\n" +
                                              "Row AA: 6, 7, 109, 114\n" +
                                              "Row BB: 3, 4, 7, 9, 11, 105, 107, 114\n" +
                                              "Row CC: 1, 2, 4, 7, 9, 12, 101, 102, 113, 114"
            case 15: message += "Balcony Center\n\n Row A: 101, 104, 109, 112, 115, 119, 124, 126\n" +
                                                   "Row B: 108, 109, 113, 114, 117, 119, 121\n" +
                                                   "Row C: 103, 106, 120, 127\n" +
                                                   "Row D: 109, 110, 112, 118, 120\n" +
                                                   "Row E: 102, 106, 109, 110, 126\n" +
                                                   "Row F: 104, 108, 111, 115\n" +
                                                   "Row G: 101, 102, 103, 104, 105, 109, 115, 116, 120, 127"
            case 16: message += "Parterre Boxes\n\n Box 2: No seats available"
            case 17: message += "Parterre Boxes\n\n Box 4: 2, 3, 8"
            case 18: message += "Parterre Boxes\n\n Box 6: 1, 7"
            case 19: message += "Parterre Boxes\n\n Box 8: 1, 2, 3, 6, 7, 8"
            case 20: message += "Parterre Boxes\n\n Box 10: 2, 4, 6"
            case 21: message += "Parterree Boxes\n\n Box 12: 5, 7"
            case 22: message += "Coral Circle East\n\n Row B: 2, 3, 5, 12, 22, 31, 35, 39, 40, 42"
            case 23: message += "Coral Circle East\n\n Row A: 2, 3, 4, 5, 12, 19, 22, 24, 27, 28, 30, 31, 39, 40, 49, 50, 51, 53"
            case 24: message += "Balcony Side East\n\n Row A: 1, 4, 6, 22, 25, 31, 39, 40, 42, 43, 49, 50, 56, 60, 65"
            default: break;
    
        }
        
        self.alertController = UIAlertController(title: "Seats avaliable: ", message: message, preferredStyle: .alert)
        self.present(alertController, animated: true, completion: {
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.alertClose(_:)))
            self.alertController.view.superview?.addGestureRecognizer(tapGestureRecognizer)
        })
    }
    
    func alertClose(_ gesture: UITapGestureRecognizer) {
        self.alertController.dismiss(animated: true, completion: nil)
    }

}

