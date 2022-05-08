//
//  QuizView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/04.
//

import SwiftUI

struct QuizView: View {
    let quizs = ModelData().quizs
    // number of question
    @State var i: Int = 0
    
    // score
    @State var score = 0
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        Text("SwiftUI")
                            .font(.system(size: 40, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("UserInterface")
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.purple)
                    }
                    
                    if (self.i < quizs.count) {
                        Text("\(self.i + 1)")
                        .font(.system(size: 30))
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.purple)
                          .padding()
                          .background(
                            Circle()
                                .stroke(Color(.purple), lineWidth: 5)
                              .padding(1)
                          )
                    } else {
                        Text("축")
                        .font(.system(size: 45))
                        .foregroundColor(.purple)
                          .padding()
                          .background(
                            Circle()
                                .stroke(Color(.purple), lineWidth: 5)
                              .padding(1)
                          )
                    }
                }
                
                VStack {
                if (self.i < quizs.count) {
                    Text(quizs[self.i].question)
                        .frame(width: 360, height: 300, alignment: .center)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 5)
                                .padding(0)
                              
                          )
                    // answer 0
                    Button {
                        self.buttonAction(n: 0)
                    } label: {
                        Text(quizs[self.i].answerList[0])
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    // answer 1
                    Button {
                        self.buttonAction(n: 1)
                    } label: {
                        Text(quizs[self.i].answerList[1])
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    // answer 2
                    Button {
                        self.buttonAction(n: 2)
                    } label: {
                        Text(quizs[self.i].answerList[2])
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2)
                            )
                    }
                    // answer 3
                    Button {
                        self.buttonAction(n: 3)
                    } label: {
                        Text(quizs[self.i].answerList[3])
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2)
                            )
                    }

                } else {
                    FinalView(score: self.score)
                }
                
                }
                .padding(.bottom, 10)
                
            }// VStack
            .padding()
            
        }
        .navigationBarHidden(true)
        
    }
    func buttonAction(n: Int) {
        // if answer is correct increment score
        if(quizs[self.i].answer == n) {
            self.score = self.score + 1
        }
        // go to next question
        self.i = self.i + 1
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
