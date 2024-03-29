//
//  DataAssembly.swift
//  ShopApp
//
//  Created by Mykola Voronin on 2/19/18.
//  Copyright © 2018 RubyGarage. All rights reserved.
//

import Swinject
import ShopApp_Gateway
import ShopApp_Shopify

class DataAssembly: Assembly {
    func assemble(container: Container) {
        
        // MARK: - Data
        
        container.register(DAO.self) { _ in
            return CoreDataDAO()
            }
            .inObjectScope(.container)
        
        // MARK: - Repositories
        
        container.register(ArticleRepository.self) { r in
            return ShopAppArticleRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(AuthentificationRepository.self) { r in
            return ShopAppAuthentificationRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(CartRepository.self) { r in
            return ShopAppCartRepository(dao: r.resolve(DAO.self)!)
            }
            .inObjectScope(.container)
        
        container.register(CategoryRepository.self) { r in
            return ShopAppCategoryRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(CustomerRepository.self) { r in
            return ShopAppCustomerRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(OrderRepository.self) { r in
            return ShopAppOrderRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(PaymentsRepository.self) { r in
            return ShopAppPaymentsRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(ProductRepository.self) { r in
            return ShopAppProductRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(ShopRepository.self) { r in
            return ShopAppShopRepository(api: r.resolve(API.self)!)
            }
            .inObjectScope(.container)
        
        container.register(API.self) { _ in
            return ShopifyAPI(apiKey: "46129f7652807745bf2e2582a146c8ac",
                              shopDomain: "against-mankind.myshopify.com",
                              adminApiKey: "de41da38a8aa5c9998ef7055864d6e87",
                              adminPassword: "fb3d3a2eb05c5a7cc2f5bd6e333c4bb7",
                              applePayMerchantId: "")
            }
            .inObjectScope(.container)
    }
}
