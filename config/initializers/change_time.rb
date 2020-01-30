class ActiveSupport::TimeWithZone
  def as_json(options = {})
    strftime('%Y-%m-%d %I:%M %p')
  end
end
# strftime will change dates to format 2020-01-30 01:58 PM
