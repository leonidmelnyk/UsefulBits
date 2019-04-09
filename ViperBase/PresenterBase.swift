//
//  PresenterBase.swift
//  BusinessCard
//
//  Created by Leonid on 4/9/19.
//  Copyright © 2019 Melnyk. All rights reserved.
//

import Foundation

class PresenterBase
{
	private var isModuleReady = false
	private var isViewReady = false
	
	func didConfigureModule()
	{
		isModuleReady = true
		trySetupModule()
	}
	
	func didTriggerViewReadyEvent()
	{
		isViewReady = true
		trySetupModule()
	}
	
	private func trySetupModule()
	{
		if(isModuleReady && isViewReady)
		{
			setupModule()
		}
	}
	
	func setupModule()
	{
		
	}
}
