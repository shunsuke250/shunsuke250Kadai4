//
//  ViewController.swift
//  Countup23-09-04
//
//  Created by 副山俊輔 on 2023/09/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countNumLabel: UILabel!
    @IBOutlet private weak var incrementButton: UIButton!
    @IBOutlet private weak var clearButton: UIButton!

    private var countNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialUI()
        updateCountNumLabel()
    }

    @IBAction func didTapIncrementButton(_ sender: UIButton) {
        countNum += 1
        updateCountNumLabel()
    }

    @IBAction func didTapClearButton(_ sender: UIButton) {
        countNum = 0
        updateCountNumLabel()
    }

    private func setupInitialUI() {
        incrementButton.setTitle("+1", for: .normal)
        clearButton.setTitle("Clear", for: .normal)
    }

    private func updateCountNumLabel() {
        countNumLabel.text = "\(countNum)"
    }
}
