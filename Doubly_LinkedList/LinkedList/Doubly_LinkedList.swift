// Doubly Lkinked List
class Node {
    var value: Int
    var prev: Node?
    var next: Node?
    init(_ no: Int) {
        value = no
        prev = nil
        next = nil
    }
}
class myDoublyLinkedlist {
    var head: Node?
    func addNode(_ no: Int) {
        let node = Node(no)
        if head == nil {
            head = node
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            node.prev = current
            current?.next = node
        }
    }
    func traverse() {
        print("\n")
        var current = head
        while current != nil {
            print(current!.value, terminator:" -> ")
            current = current?.next
        }
    }
    func reverseTraverse() {
        print("\n")
        rprint(head)
    }
    func rprint(_ current: Node?) {
        if current == nil {
            return
        }
        rprint(current?.next)
        print(current!.value, terminator:" -> ")
    }
    func deleteStartNode() {
        head = head?.next
    }
    func deleteEndNode() {
    if head?.next == nil {
        head = nil
    } else {
        var current = head
        var myPerv = head
        while current?.next != nil {
            myPerv = current
            current = current?.next
        }
        myPerv?.next = nil
        }
    }
    func insertNodeAt(_ at: Int, _ no: Int) {
        let node = Node(no)
        var current = head
        while current != nil {
            if current!.value == at {
                node.prev = current
                node.next = current?.next
                current?.next = node
                break
            }
            current = current?.next
        }
    }
    func deleteSpecificNode(_ delete: Int) {
 
       if let curr = head, curr.value == delete { 
           head = curr.next
       } else {
       var current = head
       var prevNode = head
       while current != nil {
           if current!.value == delete {
               if let _ = current?.next {
                   current?.next?.prev = prevNode
               } 
               prevNode?.next = current?.next
           }
           prevNode = current
           current = current?.next
       }
       }
    }
}
var dd = myDoublyLinkedlist()
dd.addNode(2)
dd.addNode(5)
dd.addNode(7)
dd.traverse()
dd.reverseTraverse()
dd.deleteStartNode()
dd.traverse()
dd.deleteEndNode()
dd.traverse()
dd.insertNodeAt(5, 8)
dd.traverse()
dd.addNode(9)
dd.addNode(10)
dd.traverse()
dd.deleteSpecificNode(9)
dd.traverse()