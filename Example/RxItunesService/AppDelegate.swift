//
//  AppDelegate.swift
//  RxItunesService
//
//  Created by Alexandre Freire on 06/01/2018.
//  Copyright (c) 2018 Alexandre Freire. All rights reserved.
//

import UIKit
import RxSwift
@testable import RxItunesService

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let disposeBag = DisposeBag()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Test album
        let repository = MusicRepository()

        repository.albums(withQuery: "Extremoduro")
            .subscribe(onNext: { albums in
                print(albums)
            }, onError: { error in
                print(error)
            })
            .disposed(by: disposeBag)

//        repository.artists(withQuery: "Platero")
//            .subscribe(onNext: { artists in
//                print(artists)
//            }, onError: { error in
//                print(error)
//            })
//            .disposed(by: disposeBag)

//        repository.songs(withQuery: "Standby")
//            .subscribe(onNext: { artists in
//                print(artists)
//            }, onError: { error in
//                print(error)
//            })
//            .disposed(by: disposeBag)

        
        return true
    }
}

