// Queue
 
class Node {

    var value: Int

    var next: Node?

    init(_ no: Int) {

        value = no

        next = nil

    }

}
 
class myQueue {

    var head: Node?

    func enqueue(_ no: Int) {

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

    func printQueue() {

        var current = head

        while current != nil {

            print(current!.value, terminator: " <- ")

            current = current?.next

        }

        print("\n")

    }

    func peek() -> Int? {

        return head?.value

    }

    func front() -> Int? {

        return head?.value

    }

    func tail() -> Int? {

        var current = head

        while current?.next != nil {

            current = current?.next

        }

        return current?.value

    }

    func deque() -> Int? {

        if let current = head {

            head = head?.next

            return current.value

        }

        return nil

    }

}
 
var queue = myQueue()

queue.enqueue(2)

queue.enqueue(4)

queue.enqueue(6)

queue.enqueue(8)

queue.printQueue()

if let no = queue.peek() {

    print("Peek: ",no)

}

if let no = queue.front() {

    print("Front: ",no)

}

if let no = queue.tail() {

    print("Tail: ",no)

}

if let no = queue.deque() {

    print("Dequeue: ",no)

}
