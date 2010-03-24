module LiftsHelper
  
  def exercise_select(f)
    options = {}
    options['Bench Press'] = 1 unless @a == 1
    options['Squats'] = 2 unless @b == 1
    options['Deadlifts'] = 3 unless @c == 1
    options['Rows'] = 4 unless @d == 1
    options['Tricep Extension'] = 5 unless @e == 1
    options['Bicep Curl'] = 6 unless @f == 1
    options['Military Press'] = 7 unless @g == 1
    f.select :exercise_id, options
  end
  
end
