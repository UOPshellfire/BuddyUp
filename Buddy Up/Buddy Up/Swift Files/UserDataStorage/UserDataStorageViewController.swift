//
//  UserDataStorageViewController.swift
//  MySampleApp
//
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.12
//

import UIKit

class UserDataStorageViewController: UIViewController {
    
    @IBOutlet weak var featureTextView: UITextView!

    // MARK: - View lifecycle    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        featureTextView.contentInset = UIEdgeInsetsMake(-4, -4, -4, -4)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        featureTextView.flashScrollIndicators()
    }
    
    // MARK: - IBActions
    
    @IBAction func demoUserFileStorage(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "UserFiles", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "UserFiles")
        navigationController!.pushViewController(viewController, animated: true)
    }
    
    @IBAction func demoUserSettings(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "UserSettings", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "UserSettings")
        navigationController!.pushViewController(viewController, animated: true)
    }
}