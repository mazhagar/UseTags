*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup          Setup Browser
Suite Teardown       End suite



*** Test Cases ***

SampleTest     	   
	Appstate       	FrontPage       
	LogScreenshot	C:\\Users\\Maari\\Desktop\\Reports\\test.png
	HoverText      	Chemicals                        
	ClickText      	Pool Algaecides
	CaptureIcon	Shop Now
	HoverText      	Shop Now 
	CaptureIcon	Choose your Size
	ClickText	Choose your Size
	DropDown       	selectBoxSkuId-1   40,000 Gallon Algae-Free Kit
	ClickText      	+                                
	ClickText      	Add to			cart                    
	VerifyText     	Your Shopping Cart   
	ClickText      	View Cart               
	VerifyText     	Shopping Cart   
	ClickText      	Check Out                        
	VerifyText     	Secure Checkout   
	ClickText      	Guest Checkout                  
	VerifyText     	Shipping Address   
	TypeText       	First Name *   Test
	TypeText       	Last Name*   Test
	TypeText       	Email*   test23@mail.com     
	ClickCheckbox	checkBrontoEmailAddress		off
	VerifyCheckboxValue	checkBrontoEmailAddress   off
	TypeText       	Address *   test123
	TypeText       	City*   Walker
	DROPDOWN            shippingAddress_state          California
	TypeText           Zip/Postal Code  55632
	ClickCheckbox		shippingAddressAsBilling		on
	VerifyCheckboxValue	shippingAddressAsBilling		on
	TypeText         Telephone        1234567890
	LogScreenshot
	ClickText           CONTINUE
	VerifyText	Payment Details
	DROPDOWN        billing_creditCartType		visa
	TypeText	Card Number	4263982640269299
	TypeText	Name On Card	TestCard
	TypeText	CVV/Security Code	123
	DROPDOWN	billing_expirationDate		06-Jun
	DROPDOWN	billing_expirationYear		2021
	ClickText	REVIEW ORDER
	VerifyTexts	ITEMS IN ORDER
	ClickText	PLACE ORDER
	VerifyTexts	Thank you for your order!
	${ORDERID}	GetText		Your Order ID is	between=???
	LogScreenshot
	
