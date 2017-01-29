//
//  ViewController.swift
//  Sockets
//
//  Created by Cassie Sandquist on 1/28/17.
//  Copyright © 2017 Cassie Sandquist. All rights reserved.
//

import UIKit
import SocketRocket

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: SRWebSocketDelegate {

    func webSocketDidOpen(_ webSocket: SRWebSocket!) {
        print(#function)
    }
    func webSocket(_ webSocket: SRWebSocket!, didFailWithError error: Error!) {
        print(#function)
    }
    func webSocket(_ webSocket: SRWebSocket!, didReceiveMessage message: Any!) {
        print(#function)
    }
    func webSocket(_ webSocket: SRWebSocket!, didReceivePong pongPayload: Data!) {
        print(#function)
    }
    func webSocket(_ webSocket: SRWebSocket!, didCloseWithCode code: Int, reason: String!, wasClean: Bool) {
        print(#function)
    }
}

