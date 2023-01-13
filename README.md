# mvp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- Run `dart fix --apply && flutter format .` to quick fix dart syntax and format all source code.

## Step to Run App

Step 1: Make sure you have the latest version of Flutter installed
Open terminal and run command to generate code:
\
flutter packages pub get && flutter pub run build_runner build --delete-conflicting-outputs && flutter gen-l10n
\
In the seconds time just run:
flutter packages pub run build_runner build --delete-conflicting-outputs && flutter gen-l10n
\
Step 2: Open folder lib/example/main and select the environment to run
\

### Way 2 execute ./scripts/build-generate.sh in terminal and go to Run and Debug in VS Code to select environment to run

custom entry point in Android studio: <https://stackoverflow.com/questions/55510244/flutter-how-do-i-change-main-dartentry-point-to-some-other-page-in-flutter/55510264>

## Step to implementation

- This app follow clean architecture
![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg)

- Call follow
![Call follow](https://miro.medium.com/max/1112/0*zZzajnC5VvfKiZi0.png)

&nbsp;
&nbsp;

- [Refresh token mechanism](https://krishanmadushankadev.medium.com/how-to-handle-401-unauthorised-with-dio-interceptor-flutter-60398a914406)
![Refresh token mechanism](https://is.docs.wso2.com/en/5.9.0/assets/img/using-wso2-identity-server/oauth-refresh-token-diagram.png)

As you can see in the above diagram, it’s clear that what is the flow when you use refresh and access token in authentication flow. After logging in you will get two tokens called refresh and access. This access token is expiring quickly(refresh token also expiring but it will take more time than access token). When you make a request with expired access token you get status code 401(unauthorised) in the response.In that situation you have to ask for a new tokens from the server and make the previous request with valid access token again. If the refresh token also has expired you have to direct the user to login page and force to login again.

## Real Implementation

===================

To materialize the architectural decisions and to make it more useful to our team, we’ve started to choose flutter packages to suit our needs, following the philosophy of using as fewer third-party packages as possible.

\- To implement _UseCases_ as the Business Logic Components of the application, we felt that the natural decision was the [**_Bloc package_**](https://pub.dev/packages/flutter_bloc), as it is a mature, robust, and well-known solution for state management in _Flutter_ context, and it is easy to test as well.

\- To represent _Bloc_ states and events, _Models_ and _Entities_, we’ve decided to use [**_Freezed package_**](https://pub.dev/packages/freezed), as it is an elegant and easy solution to implement sealed classes, union types and data classes as it is not available by default in _Dart_ (yet!). It’s based in code generation and it has ready-to-use integration with [**_Json\_serializable package_**](https://pub.dev/packages/json_serializable) that we’ve decided to use to deal with serialization.

\- To deal with dependency injection we’ve decided to use a simple service locator: [**_GetIt_**](https://pub.dev/packages/get_it) and define a simple set of rules-of-thumb to keep consistency over project’s development and maintenance life cycles. Rules-of-Thumb:

> _— If a class depends on another, it must be passed at instantiation by constructor and the instance control should be made by the service locator._
>
> _— Dependency injection setup for a module/feature should be split in each feature (each feature/module will contain its own file explicitly defining its dependency injection setup)._
>
> _— The service locator should never be referenced in a place other than a constructor call._

\- To deal with internationalization we’ve decided to use pure Object Oriented Programming, and keep all Strings of the application as static constants of an implementation of an abstract class to be defined.

\- To deal with navigation we’ve decided to use the _Flutters_ native _Navigator_, as it poses as a complete solution, and with the arrival of [**Auto Router api**](https://pub.dev/packages/auto_route), we think that it is an elegant declarative solution to deal with navigation.

\- To deal with http requests we’ve decided to use [**Dio package**](https://pub.dev/packages/dio) as it is a better option than the native _Flutter_ solution presenting good features like Interceptors, base options like headers, base url etc., and is a well known and popular solution. Then we made a wrapper over the client to model errors and responses into our system context.

\- To persist sensitive local data we’ve decided to use the package [**_flutter\_secure\_storage_**](https://pub.dev/packages/flutter_secure_storage) because it is a popular and performative solution when there isn’t the need of storing complex data.

We’ve defined helper classes/types to deal with the Result of actions, the _Result_ type (generic Freezed union type that has two types: a _Success_ and a _Failure_), the _RequestStatus_ type (generic Freezed union type that has four types: _Idle_, _Loading_, _Succeeded_, _Failed_) to help dealing with the visual response of requests, the AppError (abstract class that is implemented in each relevant particular error type), and to help with forms, the _Maybe_ type (generic Freezed union type that has two types: _Nothing_ and _Just_) used in the definition of _FormField_ type (generic Freezed data class containing the name of the field and the Maybe instance representing the actual possible inputted value to the form field).

## How to get ssl certificate pinning

Step 1: echo | openssl s_client -servername ${MY_SERVER} -connect ${MY_SERVER}:443 2>&1 | \
 sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > mycert.pem

for example: openssl s_client -connect virtserver.swaggerhub.com:443 2>&1 | \
 sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > mycert.pem

 openssl s_client -showcerts -servername api.uat.any.com -connect api.uat.any.com:443 </dev/null | openssl x509 | \
 sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > mycert.pem

\ If you only seeing base 64 certificate
openssl s_client -connect virtserver.swaggerhub.com:443 2>/dev/null | openssl x509
Another way: openssl s_client -showcerts -servername api.uat.any.com -connect api.uat.any.com:443 2>/dev/null | openssl x509

\
Check ssl validate: <https://www.sslshopper.com/ssl-checker.html#hostname=https://str.vov.gov.vn/>
\
<https://developer.android.com/training/articles/security-ssl>
\
<https://developer.android.com/training/articles/security-config#TrustingAdditionalCas>

\
Step 2: openssl x509 -noout -fingerprint -sha256 -inform pem -in mycert.pem

One-line: openssl s_client -showcerts -servername api.uat.any.com -connect api.uat.any.com:443 </dev/null | openssl x509 | \
 sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > mycert.pem && openssl x509 -noout -fingerprint -sha256 -inform pem -in mycert.pem

## How to build app

### Android

For automation testing or debug mode:  flutter build apk --debug --dart-define=environment=autoTest
\ Optimization build by target: flutter build apk --debug --dart-define=environment=autoTest --target-platform android-x64,android-x86
\For release mode: flutter build apk --release --dart-define=environment=production

### iOS

For automation testing or debug mode:  flutter build ios --debug --dart-define=environment=autoTest --no-codesign
flutter build ios --simulator --debug --dart-define=environment=autoTest
\For release mode: flutter build ios --release --dart-define=environment=autoTest
\
After that go to the folder where the output is stored.
Android:
example/build/outputs/app/flutter-apk
iOS:
example/build/ios/iphonesimulator/Runner.app

### Sonar Scanner

Download the Sonar scanner cli from: <https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/>
Configuration Sonar scan cli environment variables: ```export PATH="$PATH:/Users/$USER/Desktop/sonar-scanner-cli/sonar-scanner-4.7.0.2747-macosx/bin:$PATH"```
Configuration sonar-project.properties file at root project directory
Execute sonar scan by terminal command: ```sonar-scanner```
