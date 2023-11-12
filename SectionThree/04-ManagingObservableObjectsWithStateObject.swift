//
//  ManagingObservableObjectsWithStateObject.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

class TimerManager: ObservableObject {
    @Published var timerCount = 0
    private var timer = Timer()
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.timerCount += 1
        }
    }

    func stop() {
        timer.invalidate()
    }
}

struct ManagingObservableObjectsWithStateObject: View {
    @StateObject private var timerManager = TimerManager()
    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)")
            Button(action: {
                timerManager.start()
            }) {
                Text("Start Timer")
            }
            Button(action: {
                timerManager.stop()
            }) {
                Text("Stop Timer")
            }
        }
    }
}

struct ManagingObservableObjectsWithStateObject_Previews: PreviewProvider {
    static var previews: some View {
        ManagingObservableObjectsWithStateObject()
    }
}
