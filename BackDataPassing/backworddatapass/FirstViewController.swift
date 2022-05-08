

import UIKit

class FirstViewController: UIViewController,SecondVCDataPassing {
    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var label3:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       }
    
    @IBAction func pushButton(){
    guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else{
            return
        }
        secondVC.delegateSV = self
        
        self.navigationController?.pushViewController(secondVC, animated: true)
}
    func passData(name1: String?, name2: String?, name3: String?) {
        self.label1.text = name1
        self.label2.text = name2
        self.label3.text = name3
        
        
    }
}
