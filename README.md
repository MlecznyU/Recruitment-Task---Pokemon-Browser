# pokemonbrowser

## description 

This repository was created for the recruitment task. 

Description of the task: 

Implement Pokemon Browser Application.

API (select one):
graphql: https://graphql-pokemon.now.sh/
REST: https://pokeapi.co/

Description
Using the provided API, please create a simple project that:
shows a list of first 10 pokemons (name, image)
clicking one of the list position should show details about that specific pokemon. The details page should display an image of the pokemon and a few other pieces of information (chose them yourself)

Preferable technologies
Flutter, BLoC, MooR, DI, unit tests

You have to push your code to the public repository eg. Github, Bitbucket and share the link with us. Please include README file with the instructions on how to run the app.

## instruction

![](gif.gif)

The application needs an internet connection to download the necessary data for the first time.
After the first data download, the application no longer needs an internet connection to show data. 
However, it will not be possible to display images because app only saves their url addresses.

![alt text](https://scontent-frt3-1.xx.fbcdn.net/v/t1.15752-9/108102120_648169629117973_1917977931505970877_n.png?_nc_cat=104&_nc_sid=b96e70&_nc_ohc=REwu-0PRtJYAX8_tt9K&_nc_ht=scontent-frt3-1.xx&oh=6bc76da24d83fdec667454039c702f4d&oe=5F318F4C)

The application architecture is very simple. Each screen with some functionality has its own BLoC.
It this project only PokemonList screen has it. 
Bloc has access only to the repository and it gets data in the form of a universal model. 
Thanks to this BLoC do not care about where the data comes from. 
Repository is responsible for processing and exposing the data to BLoC.
The application has two independent data sources managed in the repository. 
First one is a local database that uses moor and the other is a service that performs 
http requests with using chopper package. 
If the application has locally stored data then it will not make http requests if not then 
the app will try to download data from the internet. 
In the event of any problems, e.g. lack of internet, an appropriate message will be displayed for the user.

The application uses the getIt and injectable packages to manage dependency injection.
Both configuration and generated files for DI are located in the lib folder.
Local DB and Network service both have it's own data models that can be mapped to repository model.
There are unit tests for the repository, models and BLoC
The whole project was written with lint rules

Technologies used:
- [BLoC - state management](https://pub.dev/packages/flutter_bloc)
- [get_it - DI](https://pub.dev/packages/get_it)
- [injectable - code generator for get_it](https://pub.dev/packages/injectable)
- [moor_flutter - local DB](https://pub.dev/packages/moor)
- [lint - set of rules to keep the code clean](https://pub.dev/packages/lint)
- [chopper - network service](https://pub.dev/packages/chopper)
- [bloc_test - improvement of tests for the BLoC](https://pub.dev/packages/bloc_test)

