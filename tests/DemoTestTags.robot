*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup          Setup Browser
Suite Teardown       End suite



*** Test Cases ***

SampleTest     	   
	Appstate       	FrontPage                     
	HoverText      	Chemicals                        
	ClickText      	Pool Algaecides                  
	HoverText      	Shop Now 
	ClickText	Choose your Size
	DropDown       	selectBoxSkuId-1   40,000 Gallon Algae-Free Kit
	ClickText      	+                                
	ClickText      	Add to			cart                    
	VerifyText     	Your Shopping Cart   
	ClickText      	View						Cart (2)               
	VerifyText     	Shopping Cart   
	ClickText      	Check Out                        
	VerifyText     	Secure Checkout   
	ClickText      	Guest Checkout                   null
	VerifyText     	Shipping Address   
	TypeText       	First Name *   Test
	TypeText       	Last Name*   Test
	TypeText       	Email*   test23@mail.com                          
	VerifyInputValue	true   true
	TypeText       	Address *   test123
	TypeText       	City*   Walker
	DropDown       	State
					*   Maryland
	TypeText       	Zip/Postal Code*   12345                        
	VerifyInputValue	true   true
	TypeText       	Telephone
						*   343
	TypeText       	Telephone
						*   343
	TypeText       	Telephone
						*   4344
	ClickText      	Continue                         
	VerifyText     	Payment Details   
	HoverText      	Credit Card                      
	ClickCheckbox  	Credit Card   
	ClickCheckbox  	   
	ClickCheckbox  	Credit Card   
	DropDown       	Card Number   Visa
	TypeText       	Card Number   4111111111111111
	TypeText       	Name On Card   test
	TypeText       	CVV/Security Code   123
	DropDown       	Expiration Date   03-Mar
	DropDown       	Expiration Date   2032
	ClickText      	Review Order                     
	TypeText       	Password   123123
	VerifyText     	ORDER SUMMARY   
	ClickText      	Place Order                      
	VerifyText     	Thank you for your order!   
