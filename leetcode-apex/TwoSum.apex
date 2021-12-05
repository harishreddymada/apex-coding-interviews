/*Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.*/

class Solution{
    public Integer[] twoSum(List<Integer> nums, Integer target){
        Map<Integer, Integer> map = new Map<Integer, Integer>();
        for(Integer i = 0; i < nums.size(); i++){
            int complement = target - nums[i];
            if(map.containsKey(complement)){
                return new Integer[] {map.get(complement), i};
            }
        }
        return null;
    }
}

/* check if the sum existed or not */

public Boolean twoSum(List<Integer> nums, Integer target){
    Boolean found = false;
    Set<Integer> diffvals = new Set<Integer>();
    for(Integer num: nums){
        if(diffvals.isEmpty()){
            diffvals.add(target - num);
        }else{
            if(diffvals.contains(num)){
                found = true;
                break;
            }else{
                diffvals.add(target - num);
            }
        }
    }
    return found;
}