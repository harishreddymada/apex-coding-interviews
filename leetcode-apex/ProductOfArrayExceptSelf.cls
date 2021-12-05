/*Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.*/


class Solution{
    public Integer[] productExceptSelf(Integer[] nums){
        List<Integer> productList = new List<Integer>();
        for (Integer k = 0; k < nums.size(); k++){
            Integer sum = 1;
            for (Integer j = 0; j < nums.size(); j++){
                if(j != k){
                    sum *= nums.get(j);
                }
            }
            productList.add(sum);
        }
        return productList;
    }
}

/* Test: 

System.debug(productOfNumbers(new List<Integer>{1, 2, 3, 4, 5})); //(120, 60, 40, 30, 24)
System.debug(productOfNumbers(new List<Integer>{3, 2, 1})); //(2, 3, 6)

Complexity Analysis
Time complexity: O(n2)
Space complexity: O(n)
*/