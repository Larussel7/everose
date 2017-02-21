require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get note" do
    get notes_note_url
    assert_response :success
  end

end
