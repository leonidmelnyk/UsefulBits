//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template creates by Leonid Melnyk https://github.com/leonidmelnyk
//

import UIKit

class ___VARIABLE_moduleName___View : UIViewController, ___VARIABLE_moduleName___ViewInput {
	
	var output : ___VARIABLE_moduleName___ViewOutput?
	
	// MARK: - Lifecycle events
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		self.output?.didTriggerViewReadyEvent()
	}
	
	override func viewWillAppear(_ animated: Bool)
	{
		super.viewWillAppear(animated)
	}
	
	func setupInitialState()
	{
		
	}
}
