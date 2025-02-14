iOS Clean Architecture & MVVM Template
======================================

Welcome to the **iOS Clean Architecture & MVVM Template**! This project template is designed to provide a solid, scalable starting point for new iOS apps that adhere to Clean Architecture principles and use the MVVM pattern. It includes all of the essential layers, helpers, utilities, and tests so that you can focus on building your app without reinventing the wheel.

> **Key Benefits:**
> 
> *   **Modular Structure:** Clear separation between business logic, data handling, and presentation layers.
>     
> *   **Reusability:** Contains built-in utilities, helpers, and extensions to minimize repetitive coding.
>     
> *   **Test-Ready:** Comes with sample unit tests for Domain, Data, and Presentation layers to promote test-driven development.
>     
> *   **Scalable & Extendable:** Designed to be expanded with additional features like dependency injection, coordinators, and more as your project grows.
>     

Table of Contents
-----------------

1.  [Project Structure Overview](#project-structure-overview)
    
2.  [Installation and Setup](#installation-and-setup)
    
3.  [Folder and File Descriptions](#folder-and-file-descriptions)
    
    *   [App](#app)
        
    *   [Domain](#domain)
        
    *   [Data](#data)
        
    *   [Presentation](#presentation)
        
    *   [Helpers](#helpers)
        
    *   [Resources](#resources)
        
    *   [Utilities](#utilities)
        
    *   [Tests](#tests)
        
4.  [Usage Instructions](#usage-instructions)
    
5.  [Extending and Customizing the Template](#extending-and-customizing-the-template)
    
6.  [Testing](#testing)
    
7.  [Additional Information](#additional-information)
    
8.  [License](#license)
    

Installation and Setup
----------------------

1.  Open your terminal and run
```
git clone https://github.com/YourUsername/iOS-CleanArch-MVVM-Template.gitcd iOS-CleanArch-MVVM-Template
```

2.  This template supports integration using CocoaPods or Swift Package Manager:

        
3.  Open the project (or workspace) in Xcode
    
4.  Select your target device or simulator and press **Cmd+R** to build and run the project.
    
5.  Press **Cmd+U** in Xcode to run all unit tests located in the **Tests** folder.
    

Folder and File Descriptions
----------------------------

### App

This folder is the entry point of your application.

*   AppDelegate.swift: Handles application-level events (launch, termination, background tasks). Customize it for global configuration.
    
*   SceneDelegate.swift: (If you are using a multi-scene architecture) Manages scene-level events and is responsible for setting up the initial UI.
    
*   Main.swift: Optional file that can be used to further customize the application startup if needed.
    

### Domain

Encapsulates your core business logic and is independent of any specific implementation details.

*   Models/User.swift: Defines the User data model. Use this for data representation in your domain logic.
    
*   UseCases/FetchUserUseCase.swift: Implements business logic to fetch a user. This use case abstracts away the details of data retrieval.
    
*   Protocols/UserRepositoryProtocol.swift: Defines the interface for user repository implementations. The Domain layer depends only on these protocols, not the concrete implementations.
    

### Data

Implements the concrete classes defined by the Domain layer.

*   Network/APIClient.swift: A networking layer that handles HTTP requests and responses. You can expand this using Combine or URLSession.
    
*   Network/NetworkConstants.swift: Stores API endpoints, headers, and other constants used for networking.
    
*   Repositories/UserRepository.swift: Implements the UserRepositoryProtocol to fetch user data from a remote server or local cache.
    
*   Persistence/CoreDataStack.swift: Sets up Core Data for local storage. Adjust this if you prefer another persistence method.
    

### Presentation

Contains everything related to the user interface and presentation logic.

*   Views/UserView.swift: A SwiftUI (or UIKit) view that displays user data. Modify it to match your design requirements.
    
*   Views/CustomComponents/PrimaryButton.swift: A custom UI component that standardizes button styling across the app.
    
*   ViewModels/UserViewModel.swift: The bridge between your View and Domain layers. It fetches data using use cases and prepares it for display.
    
*   Coordinators/AppCoordinator.swift: Manages navigation and flow control between screens. This is crucial for larger apps to maintain a clean navigation structure.
    

### Helpers

Contains utility code that reduces repetitive tasks.

*   Extensions/View+Extensions.swift: Provides reusable Swift extensions for common view modifications (e.g., custom modifiers for styling).
    
*   Logger.swift:**A simple logging utility for debugging and production logging.
    
*   Validators.swift: Contains helper functions for input validation (email, password, etc.).
    
*   Config.swift: Centralizes configuration settings, such as API keys, environment variables, and feature flags.
    

### Resources

Holds all non-code assets.

*   Assets.xcassets:**Image assets, icons, and other graphical resources.
    
*   Localizations/en.lproj/Localizable.strings: Contains localized strings. Expand this folder to support multiple languages.
    
*   LaunchScreen.storyboard: The launch screen interface. Customize it to match your brand.
    

### Utilities

General-purpose utilities used across the project.

*   NetworkHelper.swift: A wrapper for making network calls that minimizes boilerplate code.
    
*   ErrorHandling.swift: Centralized error definitions and functions to handle common errors.
    
*   Constants.swift: Global constants that are shared among various layers (e.g., timeout durations, default values).
    

### Tests

Contains unit tests organized by the project’s layers.

*   DomainTests/FetchUserUseCaseTests.swift: Tests for the business logic in the Domain layer.
    
*   DataTests/APIClientTests.swift: Validates the networking code and API client behavior.
    
*   PresentationTests/UserViewModelTests.swift: Ensures that the ViewModel correctly processes and presents data to the View.
    

Usage Instructions
------------------

### Setting Up Your Own Project

1.  git clone ```https://github.com/YourUsername/iOS-CleanArch-MVVM-Template.git YourProjectNamecd YourProjectName ```
    
2.  Rename and Customize: Update configuration values in Config.swift, change bundle identifiers, and customize the assets in the Resources folder to match your branding.
    
3.  Integrate Additional Dependencies: If your project requires extra libraries (like third-party networking or DI frameworks), add them using your preferred dependency manager.
    

### Working with Each Layer

*   **Domain Layer:**
    
    *   Add your models and business logic here.
        
    *   Define new use cases and protocols for any new features.
        
*   **Data Layer:**
    
    *   Implement concrete repositories that conform to your Domain protocols.
        
    *   Customize your APIClient if your project requires more advanced networking features.
        
    *   Update CoreDataStack.swift if you need custom configurations for persistence.
        
*   **Presentation Layer:**
    
    *   Build out your UI in the Views folder. Whether you’re using SwiftUI or UIKit, this layer is isolated from business logic.
        
    *   Extend your ViewModels to handle new data, and add Coordinators to manage navigation as your project scales.
        
*   **Helpers and Utilities:**
    
    *   Use the provided extensions and logging utilities to minimize repetitive code.
        
    *   Modify or add new helper functions as your project’s requirements grow.
        
*   **Resources:**
    
    *   Manage your assets and localizations here. Keeping these separate makes it easier to update graphics or add multi-language support.
        
*   **Tests:**
    
    *   Add new tests in the corresponding subfolders. This template’s structure encourages you to write tests for every new use case and feature.
        

Extending and Customizing the Template
--------------------------------------

*   Adding New Modules: Create new folders in Domain, Data, and Presentation for additional features (e.g., “Login”, “Profile”) and follow the established pattern.
    
*   Dependency Injection: Consider integrating a DI container or using property wrappers to further decouple your components.
    
*   Navigation: Enhance the Coordinator pattern by adding additional flows (modal, push, tab-based) as your application grows.
    
*   CI/CD: You can include configuration files (e.g., Fastlane, Travis CI, GitHub Actions) in a separate CI folder to automate building, testing, and deployment.
    

Testing
-------

This template is built with testing in mind:

*   Unit Tests: Write unit tests for each use case, repository, and ViewModel in the corresponding test folders.
    
*   Integration Tests: Consider adding integration tests to validate end-to-end flows, especially for networking and persistence.
    
*   Running Tests: In Xcode, press **Cmd+U** to run the full test suite. This template includes sample tests (e.g., FetchUserUseCaseTests.swift) that you can use as a guideline.
    

Additional Information
----------------------

*   Documentation: Inline documentation and comments are included within the code to help you understand each component. Review the comments for best practices and implementation details.
    
*   Contributions: If you wish to extend or improve the template, feel free to fork the repository and open a pull request. Contributions and suggestions are welcome!
    
*   Learning Resources: For more on Clean Architecture and MVVM in iOS, check out these resources:
    
    *   [Clean Architecture by Uncle Bob](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
        
    *   [Advanced iOS App Architecture](https://www.raywenderlich.com/8477-introducing-advanced-ios-app-architecture)
        
    *   [MVVM with SwiftUI](https://developer.apple.com/tutorials/swiftui)
        

License
-------

This project template is released under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as needed for your own projects.
