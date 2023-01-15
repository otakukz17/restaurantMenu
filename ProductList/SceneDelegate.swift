//
//  SceneDelegate.swift
//  CulCulator
//
//  Created by Kydyrgazy Sailau on 28.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScence = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScence.coordinateSpace.bounds)
        window?.windowScene = windowScence
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
    }

}

