
class  Node  {
    var value: String
    init(value: String) {
      self.value = value
    }
    var next: Node?
    var previous: Node?
}

class LinkedList {
    var head: Node?
    var tail: Node?
    
    var isEmpty: Bool {
    return head == nil
  }
    
    func append(value: String) {
        let newNode = Node(value: value)
        if let tailNode = tail {
        newNode.previous = tailNode
        tailNode.next = newNode
      }
        else {
        head = newNode
      }
        tail = newNode
    }
    
    func appendhead(value: String) {
        let newNode = Node(value: value)
        if let headNode = head {
        newNode.next = headNode
        headNode.previous = newNode
      }
        else {
        head = newNode
      }
        head = newNode
    }
    
    func nodeAt(index: Int) -> Node? {
      if index >= 0 {
        var node = head
        var i = index
        while node != nil {
          if i == 0 { return node }
          i -= 1
          node = node!.next
        }
      }
      return nil
    }
    
    func remove(node: Node) -> String {
      let prev = node.previous
      let next = node.next

      if let prev = prev {
        prev.next = next
      } else {
        head = next
      }
      next?.previous = prev

      if next == nil {
        tail = prev
      }

      node.previous = nil
      node.next = nil

      return node.value
    }
    
    func removeAll() {
      head = nil
      tail = nil
    }
    
    func removeById(id: Int){
       let id = nodeAt(index: id)
        remove(node: id!)
    }
    
    func removeByValue(value: String) -> Node? {
        
          var node = head
            while node != nil {
            if node?.value == value { remove(node: node!) }
            node = node!.next
          }
        return nil
        
    }
}

extension LinkedList: CustomStringConvertible {
  public var description: String {
    var text = "Linked list: "
    var node = head

    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    return text
  }
}

let Month = LinkedList()
Month.append(value: "February")
Month.append(value: "April")
Month.append(value: "March")
Month.appendhead(value: "January")
Month.removeById(id: 2)
Month.removeByValue(value: "March")

print(Month)
