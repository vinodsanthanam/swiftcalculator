import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel : UITextField
    var lastValue = 0.0;
    var isAnOperand = false;
    var operation: OperatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func hadClicked(sender :
        AnyObject) {
        let button = sender as UIButton
        let currentValue = button.titleLabel.text.bridgeToObjectiveC().doubleValue
            if isAnOperand {
                lastValue = operation!.operate(lastValue , b:currentValue)
                resultLabel.text = lastValue.bridgeToObjectiveC().stringValue
                isAnOperand = false
            }
            else{
                lastValue = (lastValue.bridgeToObjectiveC().stringValue + button.titleLabel.text).bridgeToObjectiveC().doubleValue
                resultLabel.text = lastValue.bridgeToObjectiveC().stringValue
            }
    }
    
    @IBAction func hadAdded(sender : AnyObject) {
        isAnOperand = true
        operation = Addition()
    }
    
    @IBAction func hadSubtracted(sender : AnyObject) {
        isAnOperand = true
        operation = Subtraction()
    }
    
    @IBAction func hadMultiplied(sender : AnyObject) {
        isAnOperand = true
        operation = Multiplication()
    }
    
    @IBAction func hadDivided(sender : AnyObject) {
        isAnOperand = true
        operation = Division()
    }
    
}

