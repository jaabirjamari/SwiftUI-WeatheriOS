//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Jaabir Jamari on 11/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray :  Color("lightBlue"))
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherView(imageName: "cloud.sun.fill", temp: 76)
                    
                HStack(spacing: 4){
                WeatherDayView(dayOfWeek: "TUE",
                               imageName: "cloud.sun.fill",
                               temp: 68)
                
                WeatherDayView(dayOfWeek: "WED",
                               imageName: "sun.max.fill",
                               temp: 75)
                
                WeatherDayView(dayOfWeek: "THU",
                               imageName: "wind.snow",
                               temp: 54)
                WeatherDayView(dayOfWeek: "FRI",
                               imageName: "cloud.snow.fill",
                               temp: 41)
                WeatherDayView(dayOfWeek: "SAT",
                               imageName: "snow",
                               temp: 32)
                
                }
                Spacer()
                    
                
                Button {
                    isNight.toggle()
                } label: {
                    weatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
                    
                }
            }
        }
    }

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 28 , weight: .medium ))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 30, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
    
    
}

struct MainWeatherView: View{
    
    var imageName: String
    var temp: Int
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 50 , weight: .medium ))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}



