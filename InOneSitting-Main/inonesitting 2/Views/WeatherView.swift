//
//  WeatherView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/16/23.
//

import SwiftUI
import Combine


struct WeatherView: View {
    @StateObject private var viewModel = ViewModel()

    var weather: ResponseBody
    
    var body: some View {
        
        
        NavigationView {
            VStack{
                
                ZStack(alignment: .leading) {

                    
                    VStack {
                        VStack(alignment: .leading, spacing: 5){
                            Text(weather.name)
                                .bold().font(.title)
                                .foregroundColor(.white)
                            
                            Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                                .fontWeight(.light)
                                .foregroundColor(.white)
                            
                            HStack {
                                
                                Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                }) {
                                    Text("Store   ")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
                                Spacer()
                                
                                Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                }) {
                                    Text("Profile   ")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
                                
                                Spacer()
                                Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                    viewModel.goToViewB()
                        
                                    
                                    
                                }) {
                                    Text("Task List   ")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
                                
                            }
                            
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        VStack {
                            HStack {
                                Spacer()
                                Spacer()
                                
                                VStack(spacing: 20){
                                    Image(systemName: "sun.max")
                                        .font(.system(size: 40))
                                    
                                    Text(weather.weather[0].main)
                                }
                                .frame(width: 150, alignment: .leading)
                                
                                Spacer()
                                
                                
                                Text(weather.main.feelsLike.roundDouble() + "°")
                                    .font(.system(size: 100))
                                    .fontWeight(.bold)
                                    .padding()
                                
                                
                                
                            }
                            
                            Spacer()
                                .frame(height: 80)
                            
                            AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 350)
                            } placeholder: {
                                ProgressView()
                            }
                            
                            Spacer()
                            
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Weather Overview")
                                .bold().padding(.bottom)
                            
                            HStack {
                                WeatherRow(logo: "thermometer.low", name: "Min. Temp.", value: (weather.main.tempMin.roundDouble()) + "°")
                                
                                Spacer()
                                
                                WeatherRow(logo: "thermometer.high", name: "Max. Temp.", value: (weather.main.tempMax.roundDouble()) + "°")
                                
                                
                            }
                            HStack {
                                WeatherRow(logo: "wind", name: "Wind Speed", value: (weather.wind.speed.roundDouble()) + " m/s")
                                
                                Spacer()
                                
                                WeatherRow(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble()) + "%")
                                
                                
                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.bottom, 20)
                        .foregroundColor(Color(hue: 0.118, saturation: 0.65, brightness: 0.415))
                        .background(.white)
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                        
                    }
                    
                    
                    
                    NavigationLink(destination: ContentView2(), isActive: $viewModel.showSecondView) {
                    }
                    
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .background(Color(hue: 0.133, saturation: 0.755, brightness: 0.876))
            .preferredColorScheme(.dark)
        }
        .preferredColorScheme(.light)
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
