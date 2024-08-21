//
//  ContentView2.swift
//  inonesitting
//
//  Created by Allen Lin on 5/18/23.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        
        
        
        ZStack(alignment: .bottomTrailing){
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
            
            
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)

            
        }
        .onAppear { realmManager.getTasks()}
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.901))
        
        
        
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
