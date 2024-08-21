//
//  CreateTask.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct CreateTask: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var title: String = ""
    @State private var details: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    var body: some View {
        VStack(spacing: 0) {
            
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 64, height: 4)
                .foregroundColor(.gray)
                .padding(.vertical, 12)
            
//            //MARK: Nav/Title Bar
//            HStack {
//                Button {
//                    dismiss()
//                } label: {
//                    Image(systemName: "chevron.left")
//                        .rotationEffect(Angle(degrees: 270))
//                        .font(.system(size: 20))
//                        .fontWeight(.bold)
//                        .padding(12)
//                        .foregroundColor(.white)
//                        .background(Color.black)
//                        .cornerRadius(8)
//                        .shadow(radius: 1)
//                        .padding(.bottom, 8)
//
//                }
//                .buttonStyle(.plain)
//
//                Spacer()
//
//                Text("New Task")
//                    .font(.system(size: 22))
//                    .fontWeight(.semibold)
//                    .fontDesign(.serif)
//                    .padding(.bottom, 8)
//            }
//            .padding(.horizontal, 24)
            
            Divider()
                .padding(.vertical, 8)
            
            ScrollView(showsIndicators: false) {
                
                //MARK: Title Textfield
                VStack(spacing: 0) {
                    Text("Title")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    TextField("", text: $title)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("darkgray"))
                        .cornerRadius(8)
                        .padding(.horizontal, 24)
                }
                .padding(.top)
                
                //MARK: Details TextEditor
                VStack(spacing: 0) {
                    Text("Notes")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    TextEditor(text: $details)
                        .frame(height: 120)
                        .foregroundColor(.white)
                        .scrollContentBackground(.hidden)
                        .background(Color("darkgray"))
                        .cornerRadius(8)
                        .padding(.horizontal, 24)
                    
                }
                
              
                
                VStack {
                    
                    Text("Card Preview")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    VStack(spacing: 0) {
                        
                        Text("New Task")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        Text("3 hours")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                        
                    }
                    .background(Color("darkgray"))
                    .cornerRadius(8)
                    .padding(.horizontal, 24)
                    
                }
                
                
                
                
            }
            
            
        }
        .frame(maxWidth: .infinity)
        .background(Color("background2"))
    }
}

struct TaskAddView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}
