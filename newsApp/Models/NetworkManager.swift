//
//  NetworkManager.swift
//  newsApp
//
//  Created by C. Jordan Ball III on 7/22/21.
//

import Foundation

class NetworkManager: ObservableObject {

    @Published var posts = [Post]();
    
    func fetchData() -> Void {
        if let url = URL(string: Constants.targetURL) {
            let session = URLSession(configuration: .default);
            let task = session.dataTask(with: url) { data, res, err in
                if err != nil {
                    print("ERR1: \(err?.localizedDescription ?? "biteMe")");
                    return;
                }
                let decoder = JSONDecoder();
                if let safeData = data {
                    do {
                        let results = try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits;
                        }
                    } catch {
                        print("ERR2: \(err?.localizedDescription ?? "biteMeToo")")
                    }
                    print ("Data: \(safeData)");
                }
            }
            task.resume();
        }

    }
}
