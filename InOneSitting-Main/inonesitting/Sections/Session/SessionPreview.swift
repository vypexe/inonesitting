//
//  SessionPreview.swift
//  inonesitting
//
//  Created by Abe on 6/4/23.
//

import SwiftUI

struct SessionPreview: View {
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            
            //MARK: Title Bar
            Text("Your Session")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .padding(.bottom)
            
            Divider()
                .background(.gray)
            
            ScrollView(showsIndicators: false) {
                
                //MARK: Tasks Selected List
                VStack {
                    
                    Text("Tasks selected:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                    
                    ForEach(1..<5) { num in
                        
                        HStack {
                            
                            Text("\(num)" + ".")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("Task")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            
                        }
                        .padding(.horizontal, 24)
                        .padding(.vertical, 8)
                        
                    }
                }
                .padding(.vertical)
                .background(Color("darkgray"))
                .cornerRadius(8)
                .padding()
                
                HStack{
                    Text("Total Duration:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                    
                    Spacer()
                    
                    Text("3 Hours")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                    
                }
                .padding(.vertical)
                .background(Color("darkgray"))
                .cornerRadius(8)
                .padding()
              
                Button {
                    
                    //BuildTask() or something...
                    
                } label: {
                    Text("Build Session")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("darkgray"))
                        .cornerRadius(8)
                }
                .buttonStyle(.plain)
                .padding()
                
                
            }
            
        }
        .background(Color.black)
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPreview()
    }
}
