class Attendee
  def initialize(height)
    @height = height
    # raise "Implement the Attendee#initialize method"
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
