import UIKit

var greeting = "Hello, playground"

Example.example(of: "creating and linking nodes") {
    let node1: Node = Node(value: 1)
    let node2: Node = Node(value: 2)
    let node3: Node = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}
