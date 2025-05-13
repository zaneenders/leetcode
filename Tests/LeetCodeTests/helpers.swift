import LeetCode

func makeTreeNode(
  _ int: Int32,
  _ left: UnsafeMutablePointer<TreeNode>? = nil,
  _ right: UnsafeMutablePointer<TreeNode>? = nil
) -> UnsafeMutablePointer<TreeNode> {
  let node = UnsafeMutablePointer<TreeNode>.allocate(capacity: 1)
  node.pointee.val = int
  if let left {
    node.pointee.left = left
  }
  if let right {
    node.pointee.right = right
  }
  return node
}
