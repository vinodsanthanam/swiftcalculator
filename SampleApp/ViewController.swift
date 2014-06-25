import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel : UITextField
    var lastValue = 0.0
    var currentValue = ""
    var operation: OperatorDelegate? = None()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func hadClicked(sender :
        AnyObject) {
        self.currentValue = self.currentValue + (sender as UIButton).titleLabel.text
        resultLabel.text = self.currentValue
    }
    
    @IBAction func hadAdded(sender : AnyObject) {
        compute()
        operation = Addition()
    }
    
    @IBAction func hadSubtracted(sender : AnyObject) {
        compute()
        operation = Subtraction()
    }
    
    @IBAction func hadMultiplied(sender : AnyObject) {
        compute()
        operation = Multiplication()
    }
    
    @IBAction func hadDivided(sender : AnyObject) {
        compute()
        operation = Division()
    }
    
    @IBAction func hadEvaluated(sender : AnyObject) {
        compute()
    }
    
    func compute(){
        self.lastValue = operation!.operate(self.lastValue , b:self.currentValue.bridgeToObjectiveC().doubleValue)
        currentValue = ""
        resultLabel.text = lastValue.bridgeToObjectiveC().stringValue
    }
}

