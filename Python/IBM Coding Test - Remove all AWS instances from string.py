'''
Given a string s with uppercase English letters, remove all occurrences of the string AWS until no more remain. After eacch removal, the prefix and suffix strings are concatenated. Return the final string. If the final string is empty, return -1 as a string.

Example:
s = "AWAWSSG"
    * AWAWSSG -> AWSG
    * AWSG -> G

Return the final string G.

Complete the function getFinalString in the editor.
'''

def getFinalString(s):
    while "AWS" in s:
        s = s.replace("AWS", "")
    if s == "":
        return "-1"
    else:
        return s

s = input()
print(getFinalString(s))