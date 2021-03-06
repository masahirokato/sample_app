require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @test_title = "Ruby on Rails Tutorial Sample App"
  end 

  test "should get root" do
      get root_path
      assert_response :success
    end


  test "should get home" do
    get root_path
    assert_response :success
    # assert_select "title", "Home | #{@test_title}"
    assert_select "title", "#{@test_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    #assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Help | #{@test_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    #assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    assert_select "title", "About | #{@test_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    #assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Contact | #{@test_title}"
  end

end
