#include "Solution.h"

int Solution::minDepth(TreeNode *root)
{
  if (root == nullptr)
  {
    return 0;
  }
  int left = 0;
  int right = 0;
  if (root->left != nullptr)
  {
    left = minDepth(root->left) + 1;
  }
  if (root->right != nullptr)
  {
    right = minDepth(root->right) + 1;
  }
  if (root->right == nullptr && root->left != nullptr)
  {
    return left;
  }
  if (root->left == nullptr && root->right != nullptr)
  {
    return right;
  }
  if (root->left == nullptr && root->right == nullptr)
  {
    return 1;
  }
  return std::min(left, right);
}