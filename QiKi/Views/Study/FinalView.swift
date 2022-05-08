//
//  FinalView.swift
//  QiKi
//
//  Created by Shin yongjun on 2022/05/04.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        
        let box = SKSpriteNode(imageNamed: "kiwi1.png")
        box.position = location
        box.physicsBody = SKPhysicsBody(circleOfRadius: 50)
            //rectangleOf: CGSize(width: 100, height: 100))
        addChild(box)
        
    }
}

struct FinalView: View {
    @Environment(\.dismiss) var dismiss
    
    var score: Int
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 400, height: 600)
        scene.scaleMode = .fill
        scene.backgroundColor = .white
        return scene
    }
    var body: some View {
        NavigationView {
            ZStack {
                SpriteView(scene: scene)
                    .frame(width: 400, height: 600)
                VStack {
                    Text("축하합니다!")
                        .font(.system(.largeTitle))
                        .padding()
                    Text("맞춘 문제는? \(score) 문제!")
                        .font(.system(.title))
                        .padding()
                        .onAppear() {
                            SaveScore(quiz: "quiz", score: self.score)
                        }
                    Button{
                        dismiss()
                        dismiss()
                    } label: {
                        Text("목록으로")
                            .font(.system(.title2))
                            .foregroundColor(Color(.green))
                            .fontWeight(.bold)
                            
                    }
                }
            }
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(score: 1)
    }
}
