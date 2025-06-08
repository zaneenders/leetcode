#include <iostream>
#include <set>

struct TreeNode
{
  int val;
  TreeNode *left;
  TreeNode *right;
  TreeNode() : val(0), left(nullptr), right(nullptr) {}
  TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
  TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class Solution
{
public:
  Solution();
  // https://leetcode.com/problems/balanced-binary-tree/description/?envType=problem-list-v2&envId=depth-first-search
  bool isBalanced(TreeNode *root);
  // https://leetcode.com/problems/minimum-depth-of-binary-tree/description/?envType=problem-list-v2&envId=depth-first-search
  int minDepth(TreeNode *root);
};