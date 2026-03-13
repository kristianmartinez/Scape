//
//  AddReviewViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/12/26.
//

import UIKit

class AddReviewViewController: UIViewController {
    
    var selectedBuilding: String = "DePaul Center"
    
    @IBOutlet weak var buildingPicker: UIPickerView!
    
    let data: [String] = [
        "DePaul Center",
        "CDM Center",
        "Lewis Center",
        "Daley Building",
        "Schmitt Academic Center",
        "John T. Richardson Library",
        "Student Center",
        "Ray Meyer Fitness and Recreation Center",
        "Levan Center",
        "School of Music",
        "Arts & Letters Hall",
        "The Theatre School"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.buildingPicker.delegate = self
        self.buildingPicker.dataSource = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
    
extension AddReviewViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, InComponent component: Int) {
        selectedBuilding = data[row]
    }
}
    



