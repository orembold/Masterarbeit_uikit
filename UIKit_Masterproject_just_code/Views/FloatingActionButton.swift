//
//  FloatingActionButton.swift
//  UIKit_Masterproject_just_code
//
//  Created by Oscar Rembold on 08.12.23.
//

import UIKit

class FloatingActionButton: UIImageView {
    
    typealias TapAction = () -> Void
    var onTap: TapAction?

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        image = UIImage(systemName: "plus.circle.fill")?.withRenderingMode(.alwaysTemplate)
        tintColor = .black
        isUserInteractionEnabled = true
        translatesAutoresizingMaskIntoConstraints = false
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        addGestureRecognizer(tapGesture)
    }

    @objc private func imageTapped() {
        onTap?()
    }
}
