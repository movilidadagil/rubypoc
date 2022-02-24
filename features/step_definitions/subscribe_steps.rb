require_relative '../../features/pages/subscribe'


When('I open related page to register One Month package') do
  @page = Subscribe.new
  @page.subscribe_button.click
  expect(@page.monthly_pass.text).to eq('MONTHLY PASS')
  expect(@page.monthly_pass_subtitle.text).to eq('1 week FREE trial for new customers')
  @page.start_free_trail_button.click
end
  
Then('I should be on the create account page') do
  @page.wait_until_FirstName_name_visible
  expect(@page.create_account_header.text).to eq('CREATE ACCOUNT')
end
  
Then('I fullfill account fields correctly') do
 @page.FirstName_name.set 'Hasan'
 @page.LastName_name.set 'Gul'
 @page.EmailOrPhone_name.set '05410001010'
 @page.Password_name.set '1Qaz2wsx'
end
  
When('I finish create account') do
  @page.create_account_button.click
  expect(@page.email_verification_info.text).to eq('INFO')
  @page.email_verification_info_close.click
end
  
Then('I should be on the payment method page') do
  expect(@page.payment_method_header.text).to eq('INFO')
  expect(@page.monthly_pass_card_header.text).to eq('MONTHLY PASS')
  expect(@page.monthly_pass_card_subtitle_header.text).to.eq('1 week FREE trial for new customers')
  expect(@page.payment_method_card_type_container.text).to be_displayed
 
end
  
Then('I open credit card payment form') do
  @page.proceeding_check_terms_cb.click
  @page.pay_now_button.click
end
  
  Then('I fullfill payment form with incorrect card infos') do
    @page.card_holder_name.set 'Hasan Gül'
    @page.card_number.set '4242424242424242'
    option = first(@page.card_expiry_date_m).text
    select option, from: @page.card_expiry_date_m
    option = last(@page.card_expiry_date_y).text
    select option, from: @page.card_expiry_date_y
    @page.card_verification_code.set '123'
  end
  
  When('I finish confirmation of my payment') do
    @page.yes_i_confirm_my_payment_button.click

  end
  
  Then('I should see my transaction has been denied') do
    expect(@page.transaction_error_header.text).to equal('MONTHLY PASS')
  end
  