//
//  SecondViewController.swift
//  ExploringDelegates
//
//  Created by Mike Collier on 10/10/22.
//

import UIKit


protocol colorSelectViewControllerDelegate {
    func colorSelected(_: UIColor)
    var selectedColor: UIColor { get }
}
class ColorSelectViewController: UIViewController {
    
    @IBOutlet weak var colorWell: UIColorWell!
    var delegate: colorSelectViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @objc private func colorChanged() {
        guard let selectedColor = colorWell.selectedColor else { return }
        view.backgroundColor = selectedColor
        delegate?.colorSelected(selectedColor)
    }
}
