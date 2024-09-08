//
//  MenuViewController.swift
//  Zadanie
//
//  Created by Szymon Lech on 07/09/2024.
//

import UIKit

class MenuViewController: UIViewController {

    var username: String?
//    var articles: [Article] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetchArticles()
        
        
        if let username = username {
            self.navigationItem.title = "New's for \(username)"
            
        }

        
    }
    
//    private func fetchArticles() {
//        NetworkManager.shared.fetchArticles { [weak self] articles, error in
//            DispatchQueue.main.async {
//                if let articles = articles {
//                    self?.articles = articles
//                    self?.tableView.reloadData()
//                } else if let error = error {
//                    print("Error fetching articles: \(error.localizedDescription)")
//                }
//            }
//        }
//    }
//    
//    // MARK: - Table view data source
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return articles.count
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell", for: indexPath)
//        let article = articles[indexPath.row]
//        
//        
//        if let authorLabel = cell.viewWithTag(1) as? UILabel {
//            authorLabel.text = article.author ?? "Unknown Author"
//        }
//
//        if let titleLabel = cell.viewWithTag(2) as? UILabel {
//            titleLabel.text = article.title ?? "No Title"
//        }
//
//        return cell
//    }
//    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.backgroundColor = .gray
        
    }
    
}
