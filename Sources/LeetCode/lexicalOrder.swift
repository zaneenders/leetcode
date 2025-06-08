extension Solution {
  public func lexicalOrder(_ n: Int) -> [Int] {
    var range: [Int] = Array(1...n)
    range.sort { left, right in
      "\(left)" < "\(right)"  // bad allocations
    }
    return range
  }
}
