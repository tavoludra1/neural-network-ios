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

let weights: [[Double]] = [
    [0.2, 0.8, -0.5, 1],
    [0.5, -0.91, 0.26, -0.5],
    [-0.26, -0.27, 0.17, 0.87]
]

// Biases
let biases: [Double] = [2, 3, 0.5]

// Calculate layers outputs
var layerOutputs: [Double] = []
for (neuronWeights, neuronBias) in zip(weights, biases) {
    var neuronOutput = 0.0
    for (nInput, weight) in zip(inputs, neuronWeights) {
        neuronOutput += nInput * weight
    }
    neuronOutput += neuronBias
    layerOutputs.append(neuronOutput)
}

print(layerOutputs)






