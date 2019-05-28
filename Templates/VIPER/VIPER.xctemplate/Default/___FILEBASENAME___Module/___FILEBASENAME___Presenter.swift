//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template created by Leonid Melnyk https://github.com/leonidmelnyk
//

import UIKit

class ___VARIABLE_moduleName___Presenter :
    PresenterBase, ___VARIABLE_moduleName___ModuleInput, ___VARIABLE_moduleName___InteractorOutput, ___VARIABLE_moduleName___ViewOutput {
	
	weak var view : ___VARIABLE_moduleName___ViewInput?
	var interactor : ___VARIABLE_moduleName___InteractorInput?
	var router : ___VARIABLE_moduleName___RouterInput?
	
	// MARK: - Setup
	
	override func didTriggerViewReadyEvent() {
		super.didTriggerViewReadyEvent()
		self.view?.setupInitialState()
	}
	
}
