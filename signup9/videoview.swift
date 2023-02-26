//
//  videoview.swift
//  tmkn
//
//  Created by arwanmri on 22/07/1444 AH.
//

import SwiftUI
import WebKit

struct videoview :  UIViewRepresentable {
 
    let videoID:String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
        func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)" ) else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url:youtubeURL))
    }
}


struct Videoinfo: Identifiable {
    let Name: String
    let urls: String
    let id = UUID()
}

let info = [
    Videoinfo(Name: "Management Skills", urls:"xHBhFKBLhWs"),
    Videoinfo(Name: "Communication Skills", urls:"v3DiMAPolIs") ,
    Videoinfo(Name: "Management Skills", urls:"xHBhFKBLhWs")]


