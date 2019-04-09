//
//  ___VARIABLE_moduleName___Assembly.swift
//  BusinessCard
//
//  Created by Leonid on 4/9/19.
//  Copyright © 2019 Melnyk. All rights reserved.
//

import Foundation

class ___VARIABLE_moduleName___Assembly
{
	func make(withViewFactory viewFactory: ViewFactoryProtocol) -> ___VARIABLE_moduleName___ModuleInput
	{
		let presenter = ___VARIABLE_moduleName___Presenter()
		let view = viewFactory.create(withClass: ___VARIABLE_moduleName___View.self) as! ___VARIABLE_moduleName___View
		let interactor = ___VARIABLE_moduleName___Interactor()
		let router = ___VARIABLE_moduleName___Router()
		
		presenter.view = view
		view.output = presenter
		
		presenter.interactor = interactor
		interactor.output = presenter
		
		presenter.router = router
		
		presenter.didConfigureModule()
		
		return presenter
	}
}
