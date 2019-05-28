//
//  ViewFactory.swift
//  BusinessCard
//
//  Created by Leonid on 4/9/19.
//  Copyright © 2019 Melnyk. All rights reserved.
//

import UIKit

protocol ViewFactoryProtocol {
	func create(withClass : UIViewController.Type) -> UIViewController
}

class ViewFactory {
	static func regularViewFactory() -> ViewFactoryProtocol {
		return RegularViewFactory()
	}
	
	static func nibViewFactory() -> ViewFactoryProtocol {
		return NibViewFactory()
	}
	
	static func storyboardViewFactory(withStoryboardName storyboardName : String, storyboardId : String) -> ViewFactoryProtocol {
		return StoryboardViewFactory(withStoryboardName: storyboardName,
									 storyboardId: storyboardId)
	}
}

fileprivate class RegularViewFactory : ViewFactoryProtocol {
	func create(withClass clazz: UIViewController.Type) -> UIViewController {
		return clazz.init()
	}
}

fileprivate class NibViewFactory : ViewFactoryProtocol {
	func create(withClass clazz: UIViewController.Type) -> UIViewController {
		return clazz.init(nibName : String.init(describing: clazz), bundle : Bundle.main)
	}
}

fileprivate class StoryboardViewFactory : ViewFactoryProtocol {
	var storyboardId : String
	var storyboardName : String
	
	init(withStoryboardName storyboardName : String, storyboardId : String) {
		self.storyboardId = storyboardId
		self.storyboardName = storyboardName
	}
	
	func create(withClass clazz: UIViewController.Type) -> UIViewController {
		return UIStoryboard.init(name: self.storyboardName,
								 bundle: Bundle.main)
			.instantiateViewController(withIdentifier: self.storyboardId)
	}
}
