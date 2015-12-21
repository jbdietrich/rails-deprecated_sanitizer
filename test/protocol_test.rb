require 'test_helper'

class ProtocolTest < ActiveSupport::TestCase
  def test_sanitize_protocol_separator
    sanitizer = HTML::WhiteListSanitizer.new
    string = '<a href=":">bad link</a>'

    assert_equal '<a>bad link</a>', sanitizer.sanitize(string)
  end
end
