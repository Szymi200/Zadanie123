//
//  NetworkManager.swift
//  Zadanie
//
//  Created by Szymon Lech on 08/09/2024.
//

import Foundation

//class NetworkManager {
//    
//    static let shared = NetworkManager()
//    private let apiKey = "8906011f7dc14fddbbdf5bbc47b93e3a"
//    private let baseURL = "https://newsapi.org/v2/top-headlines"
//    
//    func fetchArticles(completion: @escaping ([Article]?, Error?) -> Void) {
//        guard let url = URL(string: "\(baseURL)?country=us&apiKey=\(apiKey)") else {
//            completion(nil, NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(nil, error)
//                return
//            }
//            
//            guard let data = data else {
//                completion(nil, NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data"]))
//                return
//            }
//            
//            do {
//                let response = try JSONDecoder().decode([String: [Article]].self, from: data)
//                let articles = response["articles"]
//                completion(articles, nil)
//            } catch {
//                completion(nil, error)
//            }
//        }
//        
//        task.resume()
//    }
//}
