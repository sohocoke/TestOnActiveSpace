import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  var controller: TestWindowController!
  
    
  func applicationDidFinishLaunching(aNotification: NSNotification) {
  }
  
    
  @IBAction
  func newWindow(sender: AnyObject?) {

    controller = TestWindowController(windowNibName: "TestWindowController")
    
    controller.showWindow(self)
  }

}

