//
//  ContentView.swift
//  LearningApp
//
//  Created by Alexey Li on 2/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                // Confirm that currentModel is set
                if model.currentModule != nil {
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        NavigationLink(destination: ContentDetailView()
                            .onAppear(perform: {
                                model.beginLesson(index)
                            }), label: {
                            ContentViewRow(index: index)
                        })
                    }
                }
                
            }
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
            .accentColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
