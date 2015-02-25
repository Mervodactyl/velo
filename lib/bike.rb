class Bike

  def initialize
    fix!
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

  def fix!
    @broken = false
  end

<<<<<<< HEAD
end
=======
end

# getter and setter methods.

#   Getter methods exist SOLELY to tell you the value of a single variable inside.
#  =============
#  def getter
#   @something
#  end

# Setter methods exist SOLELY to set the vale of a single variable inside.
#
# def setter=(value)
#   @something = value
# end

# def setter_assigns_the_argument_to_something(value)
#   @something = value
# end

# setter=(99)
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
