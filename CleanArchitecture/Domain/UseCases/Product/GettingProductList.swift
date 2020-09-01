//
//  GettingProductList.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/26/20.
//  Copyright © 2020 Sun Asterisk. All rights reserved.
//

import UIKit

protocol GettingProductList {
    var productGateway: ProductGatewayType { get }
}

extension GettingProductList {
    func getProductList(dto: GetPageDto) -> Observable<PagingInfo<Product>> {
        return productGateway.getProductList(dto: dto)
    }
}
