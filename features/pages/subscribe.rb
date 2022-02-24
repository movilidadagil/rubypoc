
require_relative 'base'

class Subscribe < Base
  element :subscribe_button, '[name="Subscribe"]'
  element :monthly_pass, '.ap-sgbp-title'
  element :start_free_trail_button, 'button[data-text="START FREE TRIAL]'
  element :create_account_header, '.text-center'
  element :FirstName_name, 'FirstName'
  element :LastName_name, 'LastName'
  element :EmailOrPhone_name, 'EmailOrPhone'
  element :Password_name, 'Password'
  element :create_account_button, 'input[data-text="CREATE ACCOUNT]'
  element :email_verification_info, '.title'
  element :email_verification_info_close, '#close'
  element :payment_method_header, '.ap-s-selectPackage'
  element :monthly_pass_card_header, '.ap-fb-title'
  element :monthly_pass_card_subtitle_header, '.ap-fb-subtitle'
  element :proceeding_check_terms_cb, '#checkTerms'
  element :payment_method_card_type_container, '#select2-drpPaymentMethod-container'
  element :pay_now_button, 'input[data-text="PAY NOW]'
  element :card_holder_name, '#Ecom_Payment_Card_Name'
  element :card_number, '#Ecom_Payment_Card_Number'
  element :card_expiry_date_m, '#Ecom_Payment_Card_ExpDate_Month option'
  element :card_expiry_date_y, '#Ecom_Payment_Card_ExpDate_Year option'
  element :card_verification_code, '#Ecom_Payment_Card_Verification'
  element :yes_i_confirm_my_payment_button, '#submit3'
  element :transaction_error_header, '/div[contains(@class, "ncoltxtc")]/h3'





end