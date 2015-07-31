import Cocoa

class TestWindowController: NSWindowController {

  var timer: NSTimer!
  
    override func windowDidLoad() {
        super.windowDidLoad()

        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTimer:", userInfo: nil, repeats: true)
  
    }
  
  func report() {
    println("window: \(self.window). activeSpace: \(self.window?.onActiveSpace)")
    
    // BUG: on 10.11, #onActiveSpace returns true for windows on inactive spaces.
  }
  
  func onTimer(timer: NSTimer) {
    self.report()
  }

}
