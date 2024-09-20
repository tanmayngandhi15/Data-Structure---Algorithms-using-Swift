// Stack
 
class Node {
    var value: Int
    var next: Node?
    init(_ no: Int) {
        value = no
    }
}
 
class myStack {
    var head: Node?
    func push(_ no: Int) {
        let node = Node(no)
        if head == nil {
            head = node
        } else {
           node.next = head
           head = node
        }
    }
    func printStack() {
        var current = head
        while current != nil {
            print(current!.value, terminator:" -> ")
            current = current?.next
        }
        print("\n")
    }
    func peek() -> Int? {
        return head?.value
    }
    func pop() -> Int? {
        if let current = head {
            head = head?.next
            return current.value
        }
        return nil
    }

}
 
var stack = myStack()
stack.push(1)
stack.push(3)
stack.push(6)
stack.push(9)
stack.printStack()
if let no = stack.peek() {
    print("Peek: ",no)
}
if let no = stack.pop() {
    print("Pop: ",no)
}