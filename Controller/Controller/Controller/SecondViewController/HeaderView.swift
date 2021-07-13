//
//  HeaderView.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var headerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    func loadNib() {
        Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        headerView.frame = self.bounds
        headerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(headerView)
    }
}
