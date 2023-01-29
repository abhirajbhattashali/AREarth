//
//  EarthNode.swift
//  AREarth
//
//  Created by Abhiraj on 29/01/23.
//

import SceneKit

class EarthNode : SCNNode{
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 0.1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"art.scnassets/earth.jpeg")
        self.geometry?.firstMaterial?.isDoubleSided = true
        self.geometry?.firstMaterial?.transparency = 1
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360*CGFloat((Double.pi)/180), around: SCNVector3(x: 0, y: 1, z: 0), duration: 8)
        
    
        
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
