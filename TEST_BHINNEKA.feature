@android @compatibility_test @test_bhinneka
# Verify User can add product from search product
# Verify User can add product from category
# Verify User can add product from flash sale
Scenario: Compatibility_Test-C-Verify User can add product from search product, category and flash sale
Given User reset app
And User click "next_button_on_welcome_page"
And User wait 2 seconds
And User click "next_button_on_welcome_page"
And User click "button_login"
And User fill "email_text_field" with "email_bhinneka"
And User fill "password_text_field" with "password_bhinneka"
And User click "button_login"
And User wait 5 seconds
# search product
And User click "search_bar"
And User fill "search_text_field" with "macbook"
And User wait 2 seconds
And User click "search_product_list1"
And User click "button_add_to_cart"
Then element that contains "macbook_details" text will be displayed
And User click "add_to_cart_on_popup_confirmation"
Then element that contains "success_snackbar" text will be displayed
# category
And User click "back_button"
And User wait 2 seconds
And User click "back_button"
And User click "category"
And User wait 5 seconds
And User click "tech_n_communication_category"
And User click element with text "tablet"
And User wait 5 seconds
And User click "product_category_list1"
And User click "button_add_to_cart"
Then element that contains "ipad_details" text will be displayed
And User click "add_to_cart_on_popup_confirmation"
Then element that contains "success_snackbar" text will be displayed
# flash sale
And User click "back_button"
And User wait 2 seconds
And User click "back_button"
And User click "dashboard"
And User click "product_sale"
And User wait 2 seconds
And User click "button_add_to_cart"
And User click "add_to_cart_on_popup_confirmation"
Then element that contains "success_snackbar" text will be displayed
And User click "cart_menu"
Then element that contains "cart_text" text will be displayed
Then "total" will be displayed
Then "total_amount" will be displayed

