#include "Solution.h"

bool Solution::isBalanced(TreeNode *root)
{
  std::unordered_map<TreeNode *, int> counts;
  std::stack<TreeNode *> todo;
  std::set<TreeNode *> visited;

  if (root == nullptr)
  {
    return true;
  }
  todo.push(root);
  TreeNode *peek = root;
  int depth = 0;
  while (!todo.empty())
  {
    peek = todo.top();
    int left = 0;
    int right = 0;
    if (peek->left != nullptr)
    {
      if (visited.count(peek->left) == 0)
      {
        // not visited
        todo.push(peek->left);
        continue;
      }
      left = counts[peek->left];
    }
    if (peek->right != nullptr)
    {
      if (visited.count(peek->right) == 0)
      {
        // not visited
        todo.push(peek->right);
        continue;
      }
      right = counts[peek->right];
    }
    todo.pop();
    visited.insert(peek);
    if (peek->right == nullptr && peek->left == nullptr)
    {
      counts[peek] = 1; // leaf node
    }
    else
    {
      depth = std::max(left, right);
      counts[peek] = depth + 1;
    }
    if (abs(left - right) > 1)
    {
      return false;
    }
  }
  return true;
}
