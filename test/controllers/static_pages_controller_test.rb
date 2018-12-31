require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @titulo = "Twitter, só que zinho"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@titulo}"

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@titulo}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@titulo}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@titulo}"
  end
end