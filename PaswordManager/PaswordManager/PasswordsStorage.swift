//
//  PasswordsStorage.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/12.
//

import Foundation

class PasswordStorage {
    struct Database: Codable {
        var data: [PasswordItem] = []
    }

    struct PasswordItem: Codable, Identifiable{
        let id = UUID()
        let genre: String
        let name: String
        let password: String
    }

    private var database = Database()
    private let fileName = "passwordDatabase.json"

    init() {
        loadDatabase()
    }

    func addNewData(genre: String, name: String, password: String) {
        let newData = PasswordItem(genre: genre, name: name, password: password)
        database.data.append(newData)
        saveDatabase()
        print(database)
    }

    func fetchData(forGenre genre: String) -> [PasswordItem]{
        return database.data.filter{$0.genre == genre}
    }

    private func saveDatabase() {
        do {
            let jsonData = try JSONEncoder().encode(database)
            if let filePath = getFilePath() {
                try jsonData.write(to: filePath, options: .atomic)
            }
        } catch {
            print("Error saving database: \(error)")
        }
    }

    private func loadDatabase() {
        do {
            if let filePath = getFilePath(), FileManager.default.fileExists(atPath: filePath.path) {
                let data = try Data(contentsOf: filePath)
                database = try JSONDecoder().decode(Database.self, from: data)
            }
        } catch {
            print("Error loading database: \(error)")
        }
    }

    private func getFilePath() -> URL? {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        return documentsDirectory.appendingPathComponent(fileName)
    }
    
}
