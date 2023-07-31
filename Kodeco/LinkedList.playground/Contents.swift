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

Example.example(of: "Push") {
    var linkedList = LinkedList<Int>()
    linkedList.push(1)
    linkedList.push(2)
    linkedList.push(3)
    
    print(linkedList)
}

Example.example(of: "Append") {
    var linkedList = LinkedList<Int>()
    linkedList.append(1)
    linkedList.append(2)
    linkedList.append(3)
    
    let nodeAt2 = linkedList.node(at: 2)
    print(linkedList)
}

Example.example(of: "Insert(after)") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    
    print("Before: \(linkedList)")
    
    let node1 = linkedList.node(at: 1)
    
    linkedList.insert(4, after: node1!)
    print("After: \(linkedList)")
}

Example.example(of: "Pop method") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(2)
    linkedList.append(3)
    
    print("Before: \(linkedList)")
    let removedValue = linkedList.pop()
    
    print("After: \(linkedList), value: \(removedValue)")
}

Example.example(of: "removeLast") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(2)
    linkedList.append(3)
    linkedList.append(4)
    
    print("Before: \(linkedList)")
    let removedValue = linkedList.removeLast()
    
    print("After: \(linkedList), value: \(removedValue)")
}

Example.example(of: "remove(after:)") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(2)
    linkedList.append(3)
    linkedList.append(4)
    
    let nodeToFind = linkedList.node(at: 0)!
    
    print("Before: \(linkedList), nodeToFind: \(nodeToFind)")
    let removedValue = linkedList.remove(after: nodeToFind)
    
    print("After: \(linkedList), value: \(removedValue)")
}
