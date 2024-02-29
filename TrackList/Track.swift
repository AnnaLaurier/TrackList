//
//  Track.swift
//  TrackList
//
//  Created by Anna Lavrova on 29.02.2024.
//

struct Track {
    let artist: String
    let song: String

    var title: String {
        "\(artist) - \(song)"
    }

    static func getTrackList() -> [Track] {
        [
            Track(artist: "Земфира", song: "ПМММ"),
            Track(artist: "Сплин", song: "Кит"),
            Track(artist: "Масло черного тмина", song: "Аппарат президента"),
            Track(artist: "Хаски", song: "Пуля-дура"),
            Track(artist: "Хаски", song: "Старуха"),
            Track(artist: "NoizeMC", song: "Вояджер")
        ]
    }
}
