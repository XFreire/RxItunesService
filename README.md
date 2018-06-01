# [WIP] RxItunesService

RxItunesService is a Rx iTunes web service used for my RxSwift/RxCocoa tutorials.  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage 

```swift
let webService = WebService() 
let disposeBag = DisposeBag() 

...


webService.load(Result<Album>.self, from: .album(withText: "Extremoduro", limit: 10))
  .map{ $0.results }
  .subscribe(onNext: { albums in
    print(albums)
  }, onError: { error in
    print(error)
  })
  .disposed(by: disposeBag)
```
OUTPUT: 
```
---------------------------
---------------------------
Title: Material Defectuoso,
Author: Extremoduro,
Track Count: 6,
Genre: Rock y Alternativo,
Price: 5.99
---------------------------
---------------------------
Title: Yo, Minoria Absoluta,
Author: Extremoduro,
Track Count: 10,
Genre: Rock y Alternativo,
Price: 9.9
---------------------------
---------------------------
Title: Iros Todos a Tomar por Culo,
Author: Extremoduro,
Track Count: 14,
Genre: Rock y Alternativo,
Price: 9.99
---------------------------
---------------------------
Title: Agila,
Author: Extremoduro,
Track Count: 14,
Genre: Rock y Alternativo,
Price: 12.99
---------------------------
---------------------------
Title: La Ley Innata,
Author: Extremoduro,
Track Count: 6,
Genre: Rock y Alternativo,
Price: 5.99
---------------------------
---------------------------
Title: Para todos los públicos,
Author: Extremoduro,
Track Count: 9,
Genre: Rock,
Price: 8.91
---------------------------
---------------------------
Title: Dónde Están Mis Amigos,
Author: Extremoduro,
Track Count: 16,
Genre: Rock y Alternativo,
Price: 12.99
---------------------------
---------------------------
Title: Rock Transgresivo,
Author: Extremoduro,
Track Count: 15,
Genre: Rock y Alternativo,
Price: 14.99
---------------------------
---------------------------
Title: Grandes Exitos y Fracasos,
Author: Extremoduro,
Track Count: 18,
Genre: Latino,
Price: 14.99
---------------------------
---------------------------
Title: Canciónes Prohibidas,
Author: Extremoduro,
Track Count: 10,
Genre: Rock y Alternativo,
Price: 9.99]
```
## Installation

RxItunesService is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxItunesService', :git => 'https://github.com/XFreire/RxItunesService', :branch => 'master'
```

## Author

Alexandre Freire

## License

RxItunesService is available under the MIT license. See the LICENSE file for more info.
