# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

# pp github_points_over_100?(@candidates[0]) # true
# pp experienced?(@candidates[1]) # false
# pp qualified_candidates(@candidates)
# pp applied_in_last_15_days?(@candidates[0]) # true
# pp applied_in_last_15_days?(@candidates[1]) # false
# pp find(7)
pp ordered_by_qualifications(@candidates)