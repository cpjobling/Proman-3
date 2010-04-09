When /^I receive an email$/ do
  open_email(current_email_address)
end

When /^I open the most recent email$/ do
  open_last_email
end
