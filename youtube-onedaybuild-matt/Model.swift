//
//  Model.swift
//  youtube-onedaybuild-matt
//
//  Created by Matthew Shin on 2020-10-05.
//

import Foundation


class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, resopnse, error) in
            
            // Check if there were any erros
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video object
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                
            } catch {
                
                
                
            }
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
}
