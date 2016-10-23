import Foundation
import UIKit

struct Hero: OverwatchHero {
    var name : HeroName
    var hitPoints: Health = 0
    var heroType: HeroType {
        return produceHeroType()
    }
    
    var image : UIImage {
        return produceButtonImage()
    }
    
    var profileImage: UIImage {
        return produceProfileImage()
    }
    
    init(name: HeroName) {
        self.name = name
        hitPoints = produceInitialHitPoints()
    }
    
    func produceButtonImage() -> UIImage {
        switch name {
        case .lúcio:
            return #imageLiteral(resourceName: "Lúcio")
        case .torbjörn:
            return #imageLiteral(resourceName: "Torbjörn")
        default:
            return UIImage(named: "\(name)")!
        }
    }
    
    func produceProfileImage() -> UIImage {
        switch name {
        case .lúcio:
            return #imageLiteral(resourceName: "LucioProfile")
        case .torbjörn:
            return #imageLiteral(resourceName: "TorbjornProfile")
        default:
            return UIImage(named:"\(name)Profile")!
        }
    }
    
}
