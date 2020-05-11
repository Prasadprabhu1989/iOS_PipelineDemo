//
//  ViewController.swift
//  PipelineDemo
//
//  Created by Prasad Prabhu on 23/04/20.
//  Copyright © 2020 Prasad Prabhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let t = RepeatingTimer(timeInterval: 3)
        t.eventHandler = {
            print("Timer Fired")
        }
        t.resume()
        // Do any additional setup after loading the view.
    }


}

class RepeatingTimer {

    let timeInterval: TimeInterval
    
    init(timeInterval: TimeInterval) {
        self.timeInterval = timeInterval
    }
    
    private lazy var timer: DispatchSourceTimer = {
        let t = DispatchSource.makeTimerSource()
        t.schedule(deadline: .now() + self.timeInterval, repeating: self.timeInterval)
        t.setEventHandler(handler: { [weak self] in
            self?.eventHandler?()
        })
        return t
    }()

    var eventHandler: (() -> Void)?

    private enum State {
        case suspended
        case resumed
    }

    private var state: State = .suspended

    deinit {
        timer.setEventHandler {}
        timer.cancel()
        /*
         If the timer is suspended, calling cancel without resuming
         triggers a crash. This is documented here https://forums.developer.apple.com/thread/15902
         */
        resume()
        eventHandler = nil
    }

    func resume() {
        if state == .resumed {
            return
        }
        state = .resumed
        timer.resume()
    }

    func suspend() {
        if state == .suspended {
            return
        }
        state = .suspended
        timer.suspend()
    }
}
