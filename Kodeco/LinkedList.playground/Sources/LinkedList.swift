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
extension 

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}
