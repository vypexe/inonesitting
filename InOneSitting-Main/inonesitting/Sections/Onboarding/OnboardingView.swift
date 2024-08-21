//
//  OnboardingView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/9/23.
//

import SwiftUI

struct OnboardingView: View {

    @AppStorage("isNewUser") private var isNewUser: Bool = true
    
    var body: some View {
        VStack {
            VStack {
            
                Spacer()
                
                // MARK: Top Graphic
                ZStack {
                    Circle()
                        .frame(width: 220)
                        .shadow(radius: 0.5, x: 5, y: 5)
                    
                    VStack {
                        ForEach(0..<3) { num in
                            HStack {
                                Rectangle()
                                    .frame(width: 22, height: 22)
                                    .cornerRadius(5)
                                
                                Rectangle()
                                    .frame(width: 108, height: 22)
                                    .cornerRadius(5)
                            }
                            .foregroundColor(.background)
                            .padding(.bottom, 4)
                        }
                    }
                }
                
                Spacer()
                
                // MARK: Welcome card
                VStack(spacing: 10) {
                    
                    Text("Welcome to ")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    Text("InOneSitting")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                    
                }
                
                Divider()
                    .frame(width: 100)
                    .padding(.horizontal)
                
                //MARK: Description
                VStack {
                    Text("The all-in-one productivity tool that will guide and aid you throughout your day. ")
                        .font(.headline)
                        .foregroundColor(.white)
                        .lineSpacing(12)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                }
                
                Spacer()
                
                
                //MARK: Get Started Button
                Button {
                    
                    // Set to false
                    isNewUser = false
                    
                } label: {
                    Text("Get Started")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color("darkgray"))
                        .cornerRadius(30)
                        .shadow(radius: 0.5, x: 3, y: 3)
                        .padding()
                }
                .buttonStyle(.plain)
                
                Spacer()
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundColor(.white)
        .background(Color.background)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
