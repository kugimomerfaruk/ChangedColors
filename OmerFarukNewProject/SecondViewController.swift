
import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    var colors = [
        UIColor(red: 26/255.0 , green: 188/255.0, blue: 156/255.0, alpha: 1.0),
        UIColor(red: 46/255.0 , green: 204/255.0, blue: 113/255.0, alpha: 1.0),
        UIColor(red: 187/255.0 , green: 152/255.0, blue: 219/255.0, alpha: 1.0),
        UIColor(red: 155/255.0 , green: 89/255.0, blue: 182/255.0, alpha: 1.0),
        UIColor(red: 52/255.0 , green: 73/255.0, blue: 94/255.0, alpha: 1.0),
        UIColor(red: 22/255.0 , green: 160/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 39/255.0 , green: 174/255.0, blue: 96/255.0, alpha: 1.0),
        UIColor(red: 142/255.0 , green: 68/255.0, blue: 173/255.0, alpha: 1.0),
        UIColor(red: 241/255.0 , green: 196/255.0, blue: 15/255.0, alpha: 1.0),
]
    
    @IBOutlet weak var sendBtnOutlet: UIButton!
    @IBOutlet weak var addNameInput: UITextField!
    @IBOutlet weak var labelField: UILabel!
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("Ekrana dokundun")
        
        let number = (colors.count - 1)
        let rand  = arc4random_uniform(UInt32(Int(number)))
        view.backgroundColor = colors[Int(rand)]
        //print(rand)
    }
    
    
    
    
    
    
    @IBAction func addNameButton(_ sender: UIButton) {
        labelField.text = addNameInput.text!
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //print(addNameInput.text!)
        //labelField.text = addNameInput.text!
        addNameButton(sendBtnOutlet)
        
        return true
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
