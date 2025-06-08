public final class Solution {
  public init() {}
}

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() {
    self.val = 0
    self.next = nil
  }
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
  public init(_ val: Int, _ next: ListNode?) {
    self.val = val
    self.next = next
  }

  public convenience init(array: [Int]) {
    self.init()
    guard !array.isEmpty else {
      return
    }
    self.val = array[0]
    var cur: ListNode? = nil
    self.next = cur
    for val in array.dropFirst() {
      let n = ListNode(val)
      if self.next != nil {
        self.next!.next = n
      } else {
        self.next = n
      }
      cur = n
    }
  }
}

extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    lhs.val == rhs.val && lhs.next == rhs.next
  }
}

extension ListNode: CustomDebugStringConvertible {
  public var debugDescription: String {
    var out = "\(self.val)"
    if self.next != nil {
      out += ","
    }
    var cur: ListNode? = self.next
    while cur != nil {
      out += "\(cur!.val)"
      if cur!.next != nil {
        out += ","
      }
      cur = cur!.next
    }
    return out
  }
}
