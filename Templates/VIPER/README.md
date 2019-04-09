# VIPER Module

This is the module described by **Uncle Bob's Clear Architecture**.

![alt text](Files/Create-Module.png)

Template uses the code placed in [ViperBase folder](../../ViperBase/) of this repo.
There are separate files for each class, however, all the protocols are collected in one file.

```
protocol MainTabModuleInput : class
{
	
}

protocol MainTabInteractorInput : class
{
	
}

protocol MainTabInteractorOutput : class
{
	
}

protocol MainTabViewInput : class
{
	func setupInitialState()
}

protocol MainTabViewOutput : class
{
	func didTriggerViewReadyEvent()
}

protocol MainTabRouterInput : class
{
	
}
```
During creating module process you will face one option named *Add Module output to presenter*. Checking it you will add `moduleOutput` variable to presenter class instance:

![alt text](Files/Output-option.png)

###### The only additional action

I've put the package of files into folder for comfort. Unfortunately xcode adds such structure as *folder references* but not as *group*.

![alt text](Files/Folder-in-Navigator.png)

The only action you need to do after ceating the module is re-add it to project navigator with *Create groups* option.

![alt text](Files/Re-connect-to-Navigator.png)

![alt text](Files/Add-with-groups.png)
