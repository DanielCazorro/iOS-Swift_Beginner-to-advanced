//
//  HomeViewController.swift
//  IOS-Calculator
//
//  Created by Daniel Cazorro Frias  on 13/1/24.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARK: - Outlets
    
    // Result
    @IBOutlet weak var resultLabel: UILabel!
    
    // Numbers
    @IBOutlet weak var number0: UIStackView!
    @IBOutlet weak var number1: UIStackView!
    @IBOutlet weak var number2: UIStackView!
    @IBOutlet weak var number3: UIStackView!
    @IBOutlet weak var number4: UIStackView!
    @IBOutlet weak var number5: UIStackView!
    @IBOutlet weak var number6: UIStackView!
    @IBOutlet weak var number7: UIStackView!
    @IBOutlet weak var number8: UIStackView!
    @IBOutlet weak var number9: UIStackView!
    @IBOutlet weak var numberDecimal: UIButton!
    
    // Operators
    @IBOutlet weak var operatorAC: UIStackView!
    @IBOutlet weak var operatorPlusMinus: UIStackView!
    @IBOutlet weak var operatorPercent: UIStackView!
    @IBOutlet weak var operatorResult: UIButton!
    @IBOutlet weak var operatorAdition: UIButton!
    @IBOutlet weak var operatorSubstraction: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    
    
    // MARK:  Inicialización
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:  Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Button Actions
    
    @IBAction func operatorACAction(_ sender: Any) {
    }
    
    @IBAction func operatorPlusMinusAction(_ sender: Any) {
    }
    
    @IBAction func operatorPercentAction(_ sender: Any) {
    }
    
    @IBAction func operatorResultAction(_ sender: Any) {
    }
    
    @IBAction func operatorAdditionAction(_ sender: Any) {
    }
    
    @IBAction func operatorSubstractionAction(_ sender: Any) {
    }
    
    @IBAction func operatorMultiplicationAction(_ sender: Any) {
    }
    
    @IBAction func operatorDivisionAction(_ sender: Any) {
    }
    
    @IBAction func numberDecimalAction(_ sender: Any) {
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    
    
    
}
