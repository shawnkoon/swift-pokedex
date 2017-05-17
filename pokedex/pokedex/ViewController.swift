//
//  ViewController.swift
//  pokedex
//
//  Created by Shawn Son on 5/9/17.
//  Copyright © 2017 shawnkoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var pokedexTableView: UITableView!
    
    var pokemons: [Pokemon] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pokedexTableView.dataSource = self
        pokedexTableView.delegate = self
        
        pokemons = generatePokemon()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let pokemon = pokemons[indexPath.row]
        cell.textLabel?.text = pokemon.pokemonName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let pokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: pokemon)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pokemonDetailsViewController = segue.destination as! PokemonDetailsViewController
        pokemonDetailsViewController.pokemon = sender as! Pokemon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func generatePokemon() -> [Pokemon] {
        let pokemon1 = Pokemon()
        pokemon1.pokemonLevel = 1
        pokemon1.pokemonName = "Bulbasaur"
        pokemon1.pokemonType = "Grass"
        
        let pokemon2 = Pokemon()
        pokemon2.pokemonLevel = 23
        pokemon2.pokemonName = "Ivysaur"
        pokemon2.pokemonType = "Grass"
        
        let pokemon3 = Pokemon()
        pokemon3.pokemonLevel = 36
        pokemon3.pokemonName = "Venusaur"
        pokemon3.pokemonType = "Grass"
        
        let pokemon4 = Pokemon()
        pokemon4.pokemonLevel = 2
        pokemon4.pokemonName = "Charmander"
        pokemon4.pokemonType = "Fire"
        
        let pokemon5 = Pokemon()
        pokemon5.pokemonLevel = 18
        pokemon5.pokemonName = "Charmeleon"
        pokemon5.pokemonType = "Fire"
        
        let pokemon6 = Pokemon()
        pokemon6.pokemonLevel = 54
        pokemon6.pokemonName = "Charizard"
        pokemon6.pokemonType = "Fire"
        
        let pokemon7 = Pokemon()
        pokemon7.pokemonLevel = 3
        pokemon7.pokemonName = "Squirtle"
        pokemon7.pokemonType = "Water"
        
        return [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, pokemon7]
    }

}

