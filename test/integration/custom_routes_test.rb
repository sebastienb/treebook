require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  
  test 'that the /login opens the login page' do
    get '/login'
    assert_response :success
  end
  
  test 'that the /logout opens the log out page' do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end
  
  
  test 'that the /register opens the registration page' do
    get '/register'
    assert_response :success
  end
  
  
end
