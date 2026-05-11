
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        // Follow-up:
        // To achieve better than O(n²), use an unordered_map (hash table)
        // for O(1) average lookup time.
        // This reduces overall time complexity to O(n).

        unordered_map<int, int> mp;
        mp.reserve(nums.size());

        for (int i = 0; i < nums.size(); ++i) {
            int need = target - nums[i];

            // If complement already exists, we found the answer
            auto it = mp.find(need);
            if (it != mp.end()) {
                return {it->second, i};
            }

            // Store current number with its index
            mp[nums[i]] = i;
        }

        return {};
    }
};
