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
        let vc = PlantHealthViewController(token: "eyJhbGciOiJSUzI1NiIsImtpZCI6IjA5YTA2MjllYjNiZDQ5MmNhODg1MWU2ZWQ1NDI3OTA2NGU3NzJlODYifQ.eyJhdF9oYXNoIjoieUFfbVg4LU5rV2M0X3lMenZjYXFrQSIsImF1ZCI6Im1lZXJhLWFwcHMiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImV4cCI6MTc0MTUxMTk1MCwiaWF0IjoxNzQxMjUyNzUwLCJpc3MiOiJodHRwczovL3Nzby5kZXYubWVlcmFzcGFjZS5jb20iLCJtb2JpbGUiOiIiLCJtb2JpbGVfdmVyaWZpZWQiOmZhbHNlLCJuYW1lIjoicm9vdCIsIm5vbmNlIjoiIiwic2lkIjoiaXhuSFdlanF5QVpVVUJqSlZwbmdUUCIsInNvdXJjZSI6ImxvY2FsIiwic3ViIjoiQ2lRd09HRTROamcwWWkxa1lqZzRMVFJpTnpNdE9UQmhPUzB6WTJReE5qWXhaalUwTmpZU0JXeHZZMkZzIn0.1X5pRQEXuw4kh_mIOgNGKYQSD9J_Tfoxd7NkAf_Tugn-oFDFE3NCv3qDzlKd5IypHiQ7mN4wNvR1v9W-cziHqVddH5vXkgggVtBboC2GsHhR9zV4Nj9VSmcxmjfmCndRPupY_Ddmpjx9Rqyq0FFhmkNAPDfjydd-LE2FWJGj4pdcd60_v6K0Y0TYbm9JfoOrESKUjU40d-40zVwWrN9yvieiBIlPhdXavBZXNtFb2_Zls8cxm5gMzMACPaWLlgjYxKm9_vvMzv9QF2q5qevuGk6Rou4R9xCPH6EpPPG5mgpeQTDX-B7oXnwfxbn3sRi3cE_PhPLZhMOH-OLj9paEzA")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}

