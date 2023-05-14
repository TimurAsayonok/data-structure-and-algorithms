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

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}
