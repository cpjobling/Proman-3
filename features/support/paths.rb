module NavigationHelpers
  # Maps a static name to a static route.
  #
  # This method is *not* designed to map from a dynamic name to a
  # dynamic route like <tt>post_comments_path(post)</tt>. For dynamic
  # routes like this you should *not* rely on #path_to, but write
  # your own step definitions instead. Example:
  #
  #   Given /I am on the comments page for the "(.+)" post/ |name|
  #     post = Post.find_by_name(name)
  #     visit post_comments_path(post)
  #   end
  #
  def path_to(page_name)
    case page_name

    when /the homepage/i
      root_path

    when /the about page/
      about_path
      
    when /the terms of service page/
      tos_path
      
    when /the software license page/
      license_path
      
    when /the contact us page/
      contact_path
      
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
        "Now, go and add a mapping in features/support/paths.rb"
    end
  end
end

World(NavigationHelpers)
