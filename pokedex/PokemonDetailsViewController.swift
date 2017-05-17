//
//  PokemonDetailsViewController.swift
//  pokedex
//
//  Created by Shawn Son on 5/11/17.
//  Copyright © 2017 shawnkoon. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: UIViewController {
    
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonLevel: UILabel!
    @IBOutlet weak var pokemonType: UILabel!
    
    var pokemon = Pokemon()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonName.text? = "You clicked " + pokemon.pokemonName + "!"
        pokemonLevel.text? = "Level : \(pokemon.pokemonLevel)"
        pokemonType.text? = "Type : \(pokemon.pokemonType)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
