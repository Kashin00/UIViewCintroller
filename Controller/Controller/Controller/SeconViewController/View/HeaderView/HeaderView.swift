//
//  HeaderView.swift
//  Controller
//
//  Created by Матвей Кашин on 13.07.2021.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet private var headerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    public func setUpUI(title: String) {
        titleLabel.text = title
    }
}

private extension HeaderView {
    
    func loadNib() {
        Bundle.main.loadNibNamed( String(describing: HeaderView.self), owner: self, options: nil)
        headerView.frame = self.bounds
        headerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(headerView)
    }
}
