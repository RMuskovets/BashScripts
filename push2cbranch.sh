function pushcb {
  git branch | grep "* " - | grep -oP "^\* \K.+" | xargs git push origin
}

# Explanation: 
# 
#  git branch                                                             -> Gets the branch list with current
#             | grep "* " -                                               -> The only current branch
#                           | grep -oP "^\* \K.+"                         -> Split the string to ONLY name of branch, no "* "
#                                                 | xargs git push origin -> Just pushes the changes to origin

# Explanation #2:
#
#  Step 1. GIT BRANCH
#  Assume that the "git branch" returns us a list as below:
#   branch1
#   branch2
#   branch3
# * master
#   branch4
#   branchN

# Then, we select only the current (starts with an asterisk):
#  "grep "* " -" with output of STEP 1 gives this:
# * master

# But this is not the name, and I need to cut out the asterisk.
#  grep -oP "^\* \K.+"
#  prints master.

# And then, using xargs, push to the branch.
#  xargs git push origin
