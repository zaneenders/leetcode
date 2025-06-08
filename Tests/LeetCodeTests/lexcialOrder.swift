import LeetCode
import Testing

@Suite
struct LexicalOrder {
  @Test func exampleOne() {
    let sol = Solution()
    let result = sol.lexicalOrder(13)
    let expected = [1, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 8, 9]
    #expect(result == expected)
  }

  @Test func exampleTwo() {
    let sol = Solution()
    let result = sol.lexicalOrder(2)
    let expected = [1, 2]
    #expect(result == expected)
  }
}
