extension Solution {

  public func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var p1 = l1
    var p2 = l2
    var out: ListNode? = nil
    var cur: ListNode? = nil
    var carry = 0
    while p1 != nil || p2 != nil {
      if p1 == nil {
        p1 = ListNode()
      }
      if p2 == nil {
        p2 = ListNode()
      }
      var temp = p1!.val + p2!.val + carry
      carry = temp / 10
      if carry > 0 {
        temp = temp % 10
      }
      let n = ListNode(temp)
      if cur != nil {
        cur!.next = n
        cur = n
      }
      if out == nil {
        out = n
        cur = n
      }
      p1 = p1!.next
      p2 = p2!.next
    }
    if carry > 0 {
      cur!.next = ListNode(carry)
    }
    return out
  }
}
