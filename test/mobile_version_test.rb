require 'test_helper'

class MobileVersionTest < ActionController::TestCase

  tests HomeController
  
  
  test "renders html version" do
    get :action_one
    assert_dom_equal "ACTION ONE HTML", @response.body    
  end
  
  test "renders mobile version when available" do
    HomeController.any_instance.expects(:browser).returns( stub(:mobile? => true) )
    get :action_one
    assert_dom_equal "ACTION ONE MOBILEHTML", @response.body
  end
  
  test "render html version when a mobile version is not available" do
    HomeController.any_instance.expects(:browser).returns( stub(:mobile? => true) )
    get :action_two
    assert_dom_equal "ACTION TWO HTML", @response.body
  end
  
  test "render default format" do
    assert_raises ActionView::MissingTemplate do
      get :action_two, :format => :json
    end
  end
  
end