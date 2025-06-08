import CPPLeetCode
import Testing

@Suite("minDepth")
struct MinDepthTests {
  @Test func example1() async throws {
    var sol = Solution()
    let n1 = makeTreeNode(3)
    let n2 = makeTreeNode(9)
    let n3 = makeTreeNode(20)
    let n4 = makeTreeNode(15)
    let n5 = makeTreeNode(7)
    n1.pointee.left = n2
    n1.pointee.right = n3
    n3.pointee.left = n4
    n3.pointee.right = n5
    defer {
      n1.deallocate()
      n2.deallocate()
      n3.deallocate()
      n4.deallocate()
      n5.deallocate()
    }
    #expect(2 == sol.minDepth(n1))
  }

  @Test func example2() async throws {
    var sol = Solution()
    let n1 = makeTreeNode(2)
    let n2 = makeTreeNode(3)
    let n3 = makeTreeNode(4)
    let n4 = makeTreeNode(5)
    let n5 = makeTreeNode(6)
    n1.pointee.right = n2
    n2.pointee.right = n3
    n3.pointee.right = n4
    n4.pointee.right = n5
    defer {
      n1.deallocate()
      n2.deallocate()
      n3.deallocate()
      n4.deallocate()
      n5.deallocate()
    }
    #expect(5 == sol.minDepth(n1))
  }
}
