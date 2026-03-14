//
//  AddReviewViewController.swift
//  Scape
//
//  Created by Kristian Martinez on 3/12/26.
//

import UIKit

class AddReviewViewController: UIViewController {
    
    var floor: String = "1"
    var desc: String = ""
    var noise: Double = 0
    var busy: Double = 0
    var comfort: Double = 0
    var aesthetics: Double = 0
    var selectedBuilding: String = "DePaul Center"
    
    @IBOutlet weak var buildingPicker: UIPickerView!
    
    @IBOutlet weak var floorTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    // MARK: Ranking labels for study spot
    
    @IBOutlet weak var noiseLevelLabel: UILabel!
    
    @IBOutlet weak var busyLevelLabel: UILabel!
    
    @IBOutlet weak var comfortLevelLabel: UILabel!
    
    @IBOutlet weak var aestheticsLevelLabel: UILabel!
    
    // MARK: Sliders for study spot rankings
    
    @IBOutlet weak var noiseSlider: UISlider!
    
    @IBOutlet weak var busySlider: UISlider!
    
    @IBOutlet weak var comfortSlider: UISlider!
    
    @IBOutlet weak var aestheticsSlider: UISlider!
    
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
        
        floorTextField.keyboardType = .numberPad
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
    
    
    @IBAction func noiseSliderMoved(_ sender: UISlider) {
        noiseLevelLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func busySliderMoved(_ sender: UISlider) {
        busyLevelLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func comfortSliderMoved(_ sender: UISlider) {
        comfortLevelLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func aestheticsSliderMoved(_ sender: UISlider) {
        aestheticsLevelLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if floorTextField.text!.count == 0 || descriptionTextField.text!.count == 0 {
            let alertMessage = "Floor and Description fields must be filled to submit."
            
            let alertController = UIAlertController(title: "Missing input", message: alertMessage, preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alertController.addAction(cancelAction)
            
            present(alertController, animated: true, completion: nil)
            return
        } else {
            floor = floorTextField.text!
            desc = descriptionTextField.text!
            noise = Double(noiseLevelLabel.text!) ?? 0
            busy = Double(busyLevelLabel.text!) ?? 0
            comfort = Double(comfortLevelLabel.text!) ?? 0
            aesthetics = Double(aestheticsLevelLabel.text!) ?? 0
            var result = selectedBuilding + " " + floor + " " + desc + " " + String(noise) + " " + String(busy) + " " + String(comfort) + " " + String(aesthetics)
            print(result)
            
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        noiseSlider.value = 1
        busySlider.value = 1
        comfortSlider.value = 1
        aestheticsSlider.value = 1
        
        noiseLevelLabel.text = "0"
        busyLevelLabel.text = "0"
        comfortLevelLabel.text = "0"
        aestheticsLevelLabel.text = "0"
        
        floorTextField.text = ""
        descriptionTextField.text = ""
    }
    
    
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
    



