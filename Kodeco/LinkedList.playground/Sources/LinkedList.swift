import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
}

// MARK: Push -
extension LinkedList {
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
}

// MARK: Append -
extension LinkedList {
    public mutating func append(_ value: Value) {
        guard isEmpty == false else {
            push(value)
            return
        }
        
        tail?.next = Node(value: value)
        tail = tail?.next
    }
}

// MARK: Insert(after):
extension LinkedList {
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    

    public mutating func insert(_ value: Value, after node: Node<Value>) {
        guard tail !== node else {
            append(value)
            return
        }
        
        node.next = Node(value: value, next: node.next)
    }
}

// MARK: Pop:
extension LinkedList {
    public mutating func pop() -> Value? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
}

// MARK: RemoveLast:
extension LinkedList {
    public mutating func removeLast() -> Value? {
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        return current.value
    }
}

// MARK: remove(after:)
extension LinkedList {
    public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        
        return node.next?.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}
