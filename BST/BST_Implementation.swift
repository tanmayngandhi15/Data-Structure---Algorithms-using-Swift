// Binary Search Tree

class Node {
    
    var value: Int
    var left: Node?
    var right: Node?
    
    init (_ no: Int) {
        
        value = no
        left = nil
        right = nil
    }
}

class myBST {
    
    func insert(_ head: Node?, _ no: Int) -> Node {
        
        guard let current = head  else {
            return Node(no)
        }
        
        if no < current.value {
            current.left = insert(current.left, no)
        } else {
            current.right = insert(current.right, no)
        }
        
        return current
    }
    
    func preOrderTraversal(_ head: Node?) {
        
        guard let current = head else {
            return
        }
        
        print(current.value)
        preOrderTraversal(current.left)
        preOrderTraversal(current.right)
    }
    
    
}

var head: Node?
var mybst = myBST()
head = mybst.insert(head, 2)
head = mybst.insert(head, 4)
head = mybst.insert(head, 6)
head = mybst.insert(head, 8)
head = mybst.insert(head, 0)
mybst.preOrderTraversal(head)