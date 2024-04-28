# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
  @candidates.select { |candidate| candidate[:id] == id }
  end
  
  def experienced?(candidate)
    candidate[:years_of_experience] >= 2
  end
  
  def qualified_candidates(candidates)
    candidates.select { |candidate| 
    experienced?(candidate) && 
    github_points_over_100?(candidate) &&
    knows_ruby_or_python?(candidate) && 
    applied_in_last_15_days?(candidate) &&
    over_17?(candidate) }
  end
  
  # More methods will go below
  def github_points_over_100?(candidate)
    candidate[:github_points] >= 100
  end

  def knows_ruby_or_python?(candidate)
    candidate[:languages].include?('Ruby' || 'Python')
  end

  def applied_in_last_15_days?(candidate)
    DateTime.now - candidate[:date_applied] < 15
  end

  def over_17?(candidate)
    candidate[:age] > 17
  end

  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end
