import Foundation

struct Game {
    
    var heroes : [Hero] {
        return heroesForType()
    }
    
    var offenseCharacters : [Hero] = []
    var defenseCharacters : [Hero] = []
    var supportCharacters : [Hero] = []
    var tankCharacters : [Hero] = []
    
    var heroType : HeroType = .offense
    
    init() {
        createAllHeroes()
    }
    
    func heroesForType() -> [Hero] {
        switch heroType {
        case .offense:
            return offenseCharacters
        case .defense:
            return defenseCharacters
        case .support:
            return supportCharacters
        case .tank:
            return tankCharacters
        }
    }
}

extension Game {
    mutating func createAllHeroes(){
        
        for hero in HeroName.heroes(with: .offense) {
            offenseCharacters.append(Hero(name: hero))
        }
        
        for hero in HeroName.heroes(with: .defense) {
            defenseCharacters.append(Hero(name: hero))
        }
        
        for hero in HeroName.heroes(with: .support) {
            supportCharacters.append(Hero(name: hero))
        }
        
        for hero in HeroName.heroes(with: .tank) {
            tankCharacters.append(Hero(name: hero))
        }
    }
}
