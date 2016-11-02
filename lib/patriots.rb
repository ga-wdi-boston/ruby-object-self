# football team class
class Patriots
  attr_accessor :status
  def initialize
    @status = nil
  end

  def no_superbowl
    self.status = 'winners'
    puts "No, the Patriots really are #{@status}"
  end

  def superbowl
    self.status = 'actaully winners and Tom Brady is god'
    puts "No, the Patriots really are #{@status}"
  end
end
