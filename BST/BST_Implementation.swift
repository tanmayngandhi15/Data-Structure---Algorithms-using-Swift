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

    func inOrderTraversal(_ head: Node?) {
        
        guard let current = head else { return }
        
        inOrderTraversal(current.left)
        print(current.value)
        inOrderTraversal(current.right)
    }
    
    func postOrderTraversal(_ head: Node?) {
        
        guard let current = head else { return }
        
        postOrderTraversal(current.left)
        postOrderTraversal(current.right)
        print(current.value)
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
print("\n")
mybst.inOrderTraversal(head)
print("\n")
mybst.postOrderTraversal(head)
print("\n")