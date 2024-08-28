class Node {
    var next: Node?
    var value: Int
    init(_ no: Int) {
        value = no
        next = nil
    }
}
 
class myLinkedlist {
 
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
            current?.next = node
        }
    }
    func addNodeAtLast(_ no: Int) {
 
        let node = Node(no)
        if head == nil {
            head = node
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = node 
        }
    }
     func addNodeAtFirst(_ no: Int) {
            let node = Node(no)
            if head == nil {
                head = node
            } else {
                node.next = head
                head = node
            }
        }
        func addAfter(at: Int,no: Int) {

            var current = head
            while let curr = current {
                if curr.value == at {
                    let node = Node(no)
                    node.next = curr.next
                    current?.next = node
                    break
                }
                current = curr.next
            }
        }
        func deleteNode(_ delete: Int) {
       if let h = head {
if h.value == delete {
          head = h.next
} else {
            var current = head
            var prev = head
            while let curr = current {
                if curr.value == delete {
                    prev?.next = curr.next
                    break
                }
                prev = curr
                current = curr.next
            }
            }
            }
        }

    func traverseNode() {
print("\n")
        var current = head
 
        while let curr = current {
            print(curr.value,terminator:" -> ")
            current = curr.next
        }
 
    }

func reverseTraverse() {
            if let head = head {
            print("\n")
                revTrav(head)
            } 
        }
        func revTrav(_ current: Node?) {
            if let curr = current {
                revTrav(curr.next)
                print(curr.value,terminator:" -> ")
            }
        }

}
 
var linkedlist = myLinkedlist()
linkedlist.addNode(3)
linkedlist.addNode(5)
linkedlist.addNode(7)
linkedlist.traverseNode()
linkedlist.addNodeAtLast(9)
linkedlist.traverseNode()
linkedlist.addNodeAtFirst(1)
linkedlist.traverseNode()
linkedlist.addAfter(at:5,no:6)
linkedlist.traverseNode()
linkedlist.deleteNode(5)
linkedlist.traverseNode()
linkedlist.reverseTraverse()