import Foundation

public class LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
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
