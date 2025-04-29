//
//  ViewController.swift
//  PlantDetectSample
//
//  Created by ChenHuan on 2025/3/5.
//

import UIKit
import PlantDetectSDK

class ViewController: UIViewController {
    
    let token: String = "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjlkMWZmNGVmMDcyNzk0ZmY1MzYxYWQzZmQzOTc1Y2YyNTczZGM3MzkifQ.eyJhdF9oYXNoIjoiWUMzejhmZHNHdFhTZW9DZnJVWGtWQSIsImF1ZCI6Im1lZXJhLWFwcHMiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImV4cCI6MTc0NTk5NjU4NSwiaWF0IjoxNzQ1OTEwMTg1LCJpc3MiOiJodHRwczovL3Nzby5zdGFnaW5nLm1hZndyLmdvdi5vbSIsIm1vYmlsZSI6IiIsIm1vYmlsZV92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJyb290Iiwibm9uY2UiOiIiLCJzaWQiOiJZc2R2NkcyOTM3WmR5SzJyVXJTZENLIiwic291cmNlIjoibG9jYWwiLCJzdWIiOiJDaVF3T0dFNE5qZzBZaTFrWWpnNExUUmlOek10T1RCaE9TMHpZMlF4TmpZeFpqVTBOallTQld4dlkyRnMifQ.IX5cpjATO4Tb1A5zZi3t1uBANoGs3lqHWg40Al183pWPLmlx_VK0qN0G6RDlEeI5049PNLhbrg7LVsDxFXuUnzzLToP3QzPa-JVJpEA4qG7H6TgM1EAJ9ygyM_fCz6hYxFG52VER8INbNUbJ3ahmLfD-E4NNpZIUny-veDFgPcLFEwyRGbxns_AHv8eVeYZeChK5lEaJXwFjSM6byJZdJKtHyqTeJLJ6rMWirmerdfc1mXSMy1O-qptizT_EfmGFgb-k8c02uKvIofUG8uCGdT0nkQLVwMJfuWXmOkWvz1DYdOxdGDB4S3CCCLsmQ3zz7FjGKhhxihll170tQP4nqw"
    let baseUrl: String = "https://apis.staging.mafwr.gov.om/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        PlantEvent.sharedInstance().register(forPlantNotification: self, selector: #selector(onPlantEvent(_:)))
    }
    
    deinit {
        PlantEvent.sharedInstance().removeObserver(self)
    }
    
    @objc func onPlantEvent(_ notification: Notification) {
        print("onPlantEvent triggered with notification: \(notification)")
        let notificationVC = NotificationViewController()
        notificationVC.modalPresentationStyle = .fullScreen
        presentedViewController?.present(notificationVC, animated: true)
    }
    
    @IBAction func onClick(_ sender: Any) {
        let vc = PlantHealthViewController(
            token: token,
            baseUrl: baseUrl,
            module: "plant",
            language: "en")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func onAnimalClick(_ sender: Any) {
        let vc = PlantHealthViewController(
            token: token,
            baseUrl: baseUrl,
            module: "farm",
            language: "en")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}

