//
//  ViewController.swift
//  PlantDetectSample
//
//  Created by ChenHuan on 2025/3/5.
//

import UIKit
import PlantDetectSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onClick(_ sender: Any) {
        let vc = PlantHealthViewController(token: "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjU2YzdlZTAxYmFiYWNjM2ZlZDgwMDk0OTZhY2QxNWY0NWQyZGE3NTEifQ.eyJhdF9oYXNoIjoibXJBZFc4VUJOTl9aWDlDUGtuR3hyQSIsImF1ZCI6Im1lZXJhLWFwcHMiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImV4cCI6MTc0NDk1NjY0NCwiaWF0IjoxNzQ0ODcwMjQ0LCJpc3MiOiJodHRwczovL3Nzby5zdGFnaW5nLm1hZndyLmdvdi5vbSIsIm1vYmlsZSI6IiIsIm1vYmlsZV92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJyb290Iiwibm9uY2UiOiIiLCJzaWQiOiJhRnB3aXVpM2syNFl0UXFrUVU5UkZRIiwic291cmNlIjoibG9jYWwiLCJzdWIiOiJDaVF3T0dFNE5qZzBZaTFrWWpnNExUUmlOek10T1RCaE9TMHpZMlF4TmpZeFpqVTBOallTQld4dlkyRnMifQ.XJEtNQtepADnCS1Gezt67Ngq3rPlsOrDzZ8n6TaXtOHR1N5xWn4yqwNjSNrrsvF-RQblkF73PqsI7Hdz7r6yYbz1up_arv0x3I032zeDrfAuZ6DY_Z-P3II0o5dJ8c9c6W_NguC9O3Cn9pT-wQqc5n1gr68yrNYksz0U84nsbhWH-EpC59QUgkDxq98uVlnqfT0Tir4ujOyZQS1F5jKEpt2c8bCkeHq5xwG-h14JgQSOhoJaVTQX7qMyTnB5CpWk6MWAY7njOXppz1_oFK8Woqf6AkUckJMOuLVFOobJJy8EidIt6RekbXAbhhq1XkTgt_HBAXKPZX_C3-G0QL28OA", baseUrl: "https://apis.staging.mafwr.gov.om/", language: "en")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}

