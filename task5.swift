
class Node<T> {
  var value: T
  var next: Node<T>?
  var previous: Node<T>?

  init(value: T) {
    self.value = value
  }
}
class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?

  var isEmpty: Bool {
    return head == nil
  }

  func append(value: T) {
    let newNode = Node(value: value)
    if let tailNode = tail {
      newNode.previous = tailNode
      tailNode.next = newNode
    } else {
      head = newNode
    }
    tail = newNode
  }
    func appendhead(value: T) {
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
    
    func nodeAt(index: Int) -> Node<T>? {
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
    
    func removeAll() {
    head = nil
    tail = nil
  }
    
    func remove(node: Node<T>) -> T {
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



let Month = LinkedList<String>()
Month.append(value: "February")
Month.append(value: "April")
Month.append(value: "March")
Month.appendhead(value: "January")
print(Month)

let numbers = LinkedList<Int>()
numbers.append(value: 5)
numbers.append(value: 10)
numbers.append(value: 15)
print(numbers)
