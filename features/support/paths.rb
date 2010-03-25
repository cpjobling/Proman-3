module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the homepage/i
      root_path

    when /the registration form/i
      new_account_path

    when /the account page/i
      account_path

    when /the confirm page with bad token/
      confirm_account_path

    when /the login page/
      login_path
    when /the reset password page/
      new_password_reset_path

    when /the change password form with bad token/
      edit_password_reset_path
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
