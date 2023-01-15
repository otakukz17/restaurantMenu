//
//  ProductTableViewCell.swift
//  ProductList
//
//  Created by Kydyrgazy Sailau on 12.01.2023.
//

import Foundation
import UIKit

class ProductTableViewCell: UITableViewCell {
    
    var product: Product! {
        didSet {
            self.updateUI()
        }
    }
    
    let nameLabel = UILabel()
    let priceLabel = UILabel()
    let imageViewProduct = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(imageViewProduct)
        imageViewProduct.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.left.equalTo(15)
            make.top.equalTo(5)
            make.bottom.equalTo(-5)
        }
        imageViewProduct.contentMode = .scaleAspectFill
        imageViewProduct.clipsToBounds = true
        
        self.contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(imageViewProduct.snp.right).offset(10)
            make.top.equalTo(10)
        }
        
        self.contentView.addSubview(priceLabel)
        priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(nameLabel.snp.left)
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.bottom.equalTo(-10)
            make.right.equalTo(0)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateUI() {
        nameLabel.text = product.name
        priceLabel.text = "\(product.price) ₸"
        imageViewProduct.image = product.image
    }
}

class Product {
    let name: String
    let price: Int
    let image: UIImage
    
    init(name: String, price: Int, image: UIImage) {
        self.name = name
        self.price = price
        self.image = image
    }
}
