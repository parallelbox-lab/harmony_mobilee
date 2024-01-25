# HARMONY MOBILE APP
<hr/>

## State Management used
Bloc 
## Achitectural Pattern Used
This app follow clean architecture proposed By Uncle Bob I used BloC as state management to improve widget rebuilding performance.


## APP FEATURES 
 
* Beautiful Images, description and features 
* Caching data in local database (Hive) 

## Directory Structure
```
lib
├───core
│   ├───colors
│   ├───error
│   ├───local
│   ├───network
│   ├───theme
│   │   ├───bloc
│   │   └───local_theme
│   ├───usecase
│   └───utilities
├── dependency_injection.dart
├── main.dart
└───features
    ├───hoome_page
    │   ├───data
    │   │   ├───datasource       
    │___│   └───models
        └───presentation
            ├───bloc
            │   └───cubit        
            ├───views
            └───widgets







