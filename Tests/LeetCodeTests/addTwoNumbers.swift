import LeetCode
import Testing

@Suite
struct AddTwoNumbers {
  @Test func exampleOne() {
    let sol = Solution()
    let inputOne = ListNode(array: [2, 4, 3])
    let inputTwo = ListNode(array: [5, 6, 4])
    let result = sol.addTwoNumbers(inputOne, inputTwo)
    let expected = ListNode(array: [7, 0, 8])
    #expect(result == expected)
  }

  @Test func exampleTwo() {
    let sol = Solution()
    let inputOne = ListNode(array: [0])
    let inputTwo = ListNode(array: [0])
    let result = sol.addTwoNumbers(inputOne, inputTwo)
    let expected = ListNode(array: [0])
    #expect(result == expected)
  }

  @Test func exampleThree() {
    let sol = Solution()
    let inputOne = ListNode(array: [9, 9, 9, 9, 9, 9, 9])
    let inputTwo = ListNode(array: [9, 9, 9, 9])
    let result = sol.addTwoNumbers(inputOne, inputTwo)
    let expected = ListNode(array: [8, 9, 9, 9, 0, 0, 0, 1])
    #expect(result == expected)
  }
}
