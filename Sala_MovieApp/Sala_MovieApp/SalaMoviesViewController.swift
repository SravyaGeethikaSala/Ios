//
//  ViewController.swift
//  Sala_MovieApp
//
//  Created by Sravya Geethika Sala on 4/27/25.
//

import UIKit

class SalaMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var moviesTableView: UITableView!

    var genres: [Movies] = []

       override func viewDidLoad() {
           super.viewDidLoad()
           self.title = "Genres"
           moviesTableView.delegate = self
           moviesTableView.dataSource = self
           loadData()
       }

    func loadData() {
        genres = [
            Movies(genre: "Action", list_Array: [
                MovieList(movieName: "The Accountant", movieImage: "The Accountant", movieInfo: "Accountant is a thriller about Christian Wolff, a highly skilled accountant with autism who secretly works as a forensic accountant for dangerous criminal organizations."),
                MovieList(movieName: "Point Break", movieImage: "Point Break", movieInfo: "Point Break is an action-packed crime thriller about Johnny Utah, a young FBI agent and former college football star, who goes undercover to infiltrate a gang of bank robbers."),
                MovieList(movieName: "Twisters", movieImage: "Twisters", movieInfo: "Twisters is a new chapter in the world of storm chasing, centered on Kate Cooper, a former storm chaser who left the dangerous field after a tragic event."),
                MovieList(movieName: "Inception", movieImage: "Inception", movieInfo: "Inception is a fiction thriller about Dom Cobb, a skilled thief who specializes in extracting secrets from people's subconscious minds during dreams."),
                MovieList(movieName: "Civil War", movieImage: "Civil War", movieInfo: "This intense dystopian thriller directed by Alex Garland imagines a near-future America in the middle of a violent civil war.")
            ]),
            Movies(genre: "Comedy", list_Array: [
                MovieList(movieName: "The Idea of You", movieImage: "The Idea of You", movieInfo: "Solène Marchand, a divorced art gallery owner in Los Angeles, plans a solo camping trip for her 40th birthday."),
                MovieList(movieName: "Saturday Night", movieImage: "Saturday Night", movieInfo: "The film focuses on Lorne Michaels, the young producer striving to launch a groundbreaking late-night comedy show. As the clock ticks toward the 11:30 PM airtime, Michaels faces mounting challenges."),
                MovieList(movieName: "Step Brothers", movieImage: "stepbrothers", movieInfo: "Two grown men become stepbrothers and create chaos under one roof. Ridiculous antics and endless laughs await."),
                MovieList(movieName: "Jumanji: Welcome to the Jungle", movieImage: "jumanji", movieInfo: "Teenagers get sucked into a video game world full of dangers. Quick wit and humor drive their epic adventure."),
                MovieList(movieName: "Deadpool", movieImage: "deadpool", movieInfo: "A mercenary with a twisted sense of humor seeks revenge. Meta jokes and relentless action fuel this hilarious ride.")
            ]),
            Movies(genre: "Fantasy", list_Array: [
                MovieList(movieName: "Harry Potter and the Sorcerer's Stone", movieImage: "harrypotter", movieInfo: "A young boy discovers he’s a wizard and enters a magical school. Mysteries, magic, and friendships bloom."),
                MovieList(movieName: "The Lord of the Rings", movieImage: "lotr", movieInfo: "A hobbit sets out to destroy an ancient evil ring. Friendship and courage drive an unforgettable journey across Middle-earth."),
                MovieList(movieName: "The Chronicles of Narnia", movieImage: "narnia", movieInfo: "Four siblings discover a magical land frozen by a wicked queen. Bravery and wonder fill their fantastical quest."),
                MovieList(movieName: "Mickey 17", movieImage: "Mickey 17", movieInfo: "Mickey 17 is set in the near future and follows Mickey, a human who is sent on a dangerous mission to colonize a distant planet."),
                MovieList(movieName: "The Hobbit: An Unexpected Journey", movieImage: "hobbit", movieInfo: "Bilbo Baggins joins dwarves on a quest to reclaim a lost kingdom. Adventure, dragons, and epic battles await.")
            ]),
            Movies(genre: "Horror", list_Array: [
                MovieList(movieName: "The Substance", movieImage: "The Substance", movieInfo: "It is a dark, psychological horror film that explores society’s obsession with youth, beauty, and perfection."),
                MovieList(movieName: "Insidious", movieImage: "insidious", movieInfo: "A family fights dark spirits haunting their child. Jump scares and unsettling imagery create chilling horror."),
                MovieList(movieName: "Companion", movieImage: "Companion", movieInfo: "The story follows a woman named Moya, who is desperately trying to survive after some unknown event has destroyed the world as we know it."),
                MovieList(movieName: "Annabelle", movieImage: "annabelle", movieInfo: "An evil doll brings chaos into a young family's life. Creepy visuals and terrifying setups drive the fear."),
                MovieList(movieName: "Sinister", movieImage: "sinister", movieInfo: "A true-crime writer finds disturbing footage linked to a series of murders. Dark discoveries spiral into true terror.")
            ]),
            Movies(genre: "Sci-Fi", list_Array: [
                MovieList(movieName: "Interstellar", movieImage: "Interstellar", movieInfo: "Interstellar is a grand science-fiction epic set in a near future where Earth is slowly becoming uninhabitable due to climate disasters like dust storms and failing crops."),
                MovieList(movieName: "Oblivion", movieImage: "oblivion", movieInfo: "In a post-apocalyptic Earth, a technician questions everything he knows. Mystery and dazzling visuals propel the narrative."),
                MovieList(movieName: "Arrival", movieImage: "arrival", movieInfo: "Linguists race to understand alien visitors before conflict erupts. A cerebral and deeply emotional take on first contact."),
                MovieList(movieName: "Ready Player One", movieImage: "readyplayerone", movieInfo: "In a dystopian future, players hunt for a virtual treasure. Pop culture references and adventure overflow."),
                MovieList(movieName: "The Terminator", movieImage: "The Terminator", movieInfo: "The movie is set in 1984, but it begins with a glimpse of a grim future: in the year 2029, machines have taken over the world and are locked in a brutal war against the last surviving humans.")
            ])
        ]
     
        genres.sort { $0.genre < $1.genre }
    }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return genres.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
           cell.textLabel?.text = genres[indexPath.row].genre
           return cell
       }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "listsSegue" {
               if let destination = segue.destination as? MovieListViewController,
                  let indexPath = moviesTableView.indexPathForSelectedRow {
                   let selectedGenre = genres[indexPath.row]
                   destination.selectedGenre = selectedGenre
               }
           }
       }


}

