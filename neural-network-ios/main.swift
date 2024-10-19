//
//  main.swift
//  neural-network-ios
//
//  Created by GAPT on 19/10/24.
//

import Foundation

// Define the Neuron Class
class Neuron {
    var weights: [Double]
    var bias: Double
    
    init(weights: [Double], bias: Double) {
        self.weights = weights
        self.bias = bias
    }
    
    // Calculate the weighted sum of inputs
    func calculateOutput(inputs: [Double]) -> Double {
        var sum = bias
        
        for i in 0..<weights.count {
            sum += inputs[i] * weights[i]
        }
        return sum
    }
    
}

// Define inputs, weights, and biases
let inputs: [Double] = [1, 2, 3, 2.5]
let weights1: [Double] = [0.2, 0.8, -0.5, 1]
let weights2: [Double] = [0.5, -0.91, 0.26, -0.5]
let weights3: [Double] = [-0.26, -0.27, 0.17, 0.87]
let bias1 = 2.0
let bias2 = 3.0
let bias3 = 0.5

// Create Neuron instances
let neuron1 = Neuron(weights: weights1, bias: bias1)
let neuron2 = Neuron(weights: weights2, bias: bias2)
let neuron3 = Neuron(weights: weights3, bias: bias3)

let output1 = neuron1.calculateOutput(inputs: inputs)
let output2 = neuron2.calculateOutput(inputs: inputs)
let output3 = neuron3.calculateOutput(inputs: inputs)

// Format outputs to 3 decimal places
let roundedOutput1 = round(output1 * 1000) / 1000
let roundedOutput2 = round(output2 * 1000) / 1000
let roundedOutput3 = round(output3 * 1000) / 1000


// print array output
let outputs: [Double] = [roundedOutput1, roundedOutput2, roundedOutput3]
print(outputs)





