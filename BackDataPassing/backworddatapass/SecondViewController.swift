

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTF:UITextField!
    @IBOutlet weak var middlename:UITextField!
    @IBOutlet weak var surname:UITextField!
    
    weak var delegateSV:SecondVCDataPassing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SecondVC"
        self.navigationItem.hidesBackButton = true
        
    }
    @IBAction func popButton(){
        
        let name = self.nameTF.text
        let middlename = self.middlename.text
        let surname = self.surname.text
        
        delegateSV?.passData(name1: name, name2: middlename, name3: surname)
        
        self.navigationController?.popViewController(animated: true)
    }
}
