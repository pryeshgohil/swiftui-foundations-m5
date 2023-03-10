//
//  ContentView.swift
//  learning-app
//
//  Created by Pryesh Gohil on 15/01/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    LazyVStack {
                        ForEach(model.modules) { module in
                            // Learning Card
                            
                            VStack (spacing: 20) {
                                
                                NavigationLink(
                                    destination: ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(moduleId: module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentContentSelected) {
                                        HomeViewRow(image: module.content.image,
                                                    title: "Learn \(module.category)",
                                                    description: module.content.description,
                                                    count: "\(module.content.lessons.count) Lessons",
                                                    time: module.content.time)
                                        
                                    }
                                
                                NavigationLink(
                                    destination: TestView()
                                        .onAppear(perform: {
                                            model.beginTest(module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentTestSelected) {
                                    // Test Card
                                    HomeViewRow(image: module.test.image,
                                                title: "\(module.category) Test",
                                                description: module.test.description,
                                                count: "\(module.test.questions.count) Questions",
                                                time: module.test.time)
                                }
                                
                           


                            }
                            }
                            
   
                    }
                    .accentColor(.black)
                    .padding()
                }
            }
            .navigationTitle("Get Started")
        }


    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
