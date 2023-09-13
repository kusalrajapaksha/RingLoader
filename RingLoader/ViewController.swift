//
//  ViewController.swift
//  RingLoader
//
//  Created by Kusal Rajapaksha on 2023-02-20.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var ringLoaderView: RingLoaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
 
        configure()
    }
    
    func configure(){
        
        view.addSubview(previewView)
        previewView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        previewView.heightAnchor.constraint(equalTo: previewView.widthAnchor, multiplier: 1.0).isActive = true
        previewView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        previewView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        
        view.addSubview(startButton)
        startButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
        startButton.topAnchor.constraint(equalTo: previewView.bottomAnchor, constant: 100).isActive = true
        
        view.addSubview(stopButton)
        stopButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        stopButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        stopButton.topAnchor.constraint(equalTo: previewView.bottomAnchor, constant: 100).isActive = true
        
        ringLoaderView = RingLoaderView()
        ringLoaderView.add(in: previewView)
    }
    
    lazy var startButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = .green
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(tapStart), for: .touchUpInside)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 25
        return btn
    }()
    
    lazy var stopButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Stop", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .red
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(tapStop), for: .touchUpInside)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 25
        return btn
    }()
    
    lazy var previewView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    @objc func tapStart(){
        ringLoaderView.startAnimating()
    }
    
    @objc func tapStop(){
        ringLoaderView.stopAnimating()
    }

}

