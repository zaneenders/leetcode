import CPPLeetCode
import Testing

@Suite("isBalanced")
struct IsBalancedTests {

  @Test func example1() async throws {
    var sol = Solution()
    let p1 = makeTreeNode(3)
    let p2 = makeTreeNode(9)
    let p3 = makeTreeNode(20)
    let p4 = makeTreeNode(15)
    let p5 = makeTreeNode(7)
    defer {
      p1.deallocate()
      p2.deallocate()
      p3.deallocate()
      p4.deallocate()
      p5.deallocate()
    }
    p1.pointee.left = p2
    p1.pointee.right = p3
    p3.pointee.left = p4
    p3.pointee.right = p5
    let b = sol.isBalanced(p1)
    #expect(b == true)
  }

  @Test func example2() async throws {
    var sol = Solution()
    let p1 = makeTreeNode(1)
    let p2 = makeTreeNode(2)
    let p3 = makeTreeNode(2)
    let p4 = makeTreeNode(3)
    let p5 = makeTreeNode(3)
    let p6 = makeTreeNode(4)
    let p7 = makeTreeNode(4)
    defer {
      p1.deallocate()
      p2.deallocate()
      p3.deallocate()
      p4.deallocate()
      p5.deallocate()
      p6.deallocate()
      p7.deallocate()
    }
    p1.pointee.left = p2
    p1.pointee.right = p3
    p2.pointee.left = p4
    p2.pointee.right = p5
    p4.pointee.left = p6
    p4.pointee.right = p7
    let b = sol.isBalanced(p1)
    #expect(b == false)
  }

  @Test func example3() async throws {
    var sol = Solution()
    let b = sol.isBalanced(nil)
    #expect(b == true)
  }

  @Test func example4() async throws {
    var sol = Solution()
    let p1 = makeTreeNode(1)
    let p2 = makeTreeNode(2)
    let p3 = makeTreeNode(3)
    defer {
      p1.deallocate()
      p2.deallocate()
      p3.deallocate()
    }
    p1.pointee.right = p2
    p2.pointee.right = p3
    let b = sol.isBalanced(p1)
    #expect(b == false)
  }
}
