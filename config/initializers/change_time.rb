class ActiveSupport::TimeWithZone
  def as_json(options = {})
    strftime('%Y-%m-%d %I:%M %p')
  end
end
