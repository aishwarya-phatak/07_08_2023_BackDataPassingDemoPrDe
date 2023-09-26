//
//  BackDataPassingProtocol.swift
//  07_08_2023_BackDataPassingDemoPrDe
//
//  Created by Vishal Jagtap on 26/09/23.
//

import Foundation

//protocol BackwardDataPassing{
//    func passDataBack(username : String, lastname : String, city : String)
//}


//approach 2 - protocol
protocol BackwardDataPassing{
    func passDataBack(student : Student)
}
