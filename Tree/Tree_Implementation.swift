// Tree
 
class Node {
    var value: Int
    var left: Node?
    var right: Node?
    init(_ no: Int) {
        value = no
        left = nil
        right = nil
    }
}
 
class myTree {
    var index  = -1
    func addNode(_ arr: [Int]) -> Node? {
        index += 1
        if index >= arr.count || arr[index] == -1 { return nil }
         let node = Node(arr[index])
         node.left = addNode(arr)    
         node.right = addNode(arr)   
 
         return node
    }
    func leftNodes(_ head: Node?) {
        if head == nil { return }
        print(head!.value, terminator: " -> ")
        leftNodes(head?.left)
    }
    func rightNodes(_ head: Node?) {
        if head == nil { return }
        print(head!.value, terminator: " -> ")
        rightNodes(head?.right)
    }
    func leafNodes(_ head: Node?)
    {
        if head == nil { return }
        if head?.left == nil && head?.right == nil {
            print(head!.value, terminator: " -> ")
        }
        leafNodes(head?.left)
        leafNodes(head?.right)
    }
}
 
let arr = [1, 2, 4, -1, -1, 5, -1, -1, 3, -1, 6, -1, -1]
var mytree = myTree()
let root = mytree.addNode(arr)
print("Left Nodes: ")
mytree.leftNodes(root)
print("\nRight Nodes: ")
mytree.rightNodes(root)
print("\nLeaf Nodes")
mytree.leafNodes(root)