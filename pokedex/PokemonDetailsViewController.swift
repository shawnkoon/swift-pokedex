//
//  PokemonDetailsViewController.swift
//  pokedex
//
//  Created by Shawn Son on 5/11/17.
//  Copyright © 2017 shawnkoon. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: UIViewController {
    
    @IBOutlet weak var pokemonText: UILabel!
    
    var pokemon = "No pokemon"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonText.text? = "You clicked " + pokemon + "!"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
