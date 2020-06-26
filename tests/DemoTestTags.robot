ITS_SmokeTest
	[tags]            smoke
	Appstate       	    FrontPage
	ClickText      	    ${Mini_Quick}
	TypeText	quantity	3
	TypeText	skuId		${ItemNumber_Quick}
	ClickText	${AddToCartButton_Quick}
	#Paypal Checkout
	#ClickElement           //*[@id\="replaced_with_paypal_check_button"]/input[5]
	#TypeText	email	rsivakumar@dss-partners.com
	#ClickText	Next
	#TypeText	password	raviS9840@
	#ClickText	Log in
	#ClickText	Continue
	ClickElement	//*[@id\="cartform"]/div[3]/div[3]/div[3]/div[2]/input[3]
ITS_RegressionTest
   	[tags]              regression
	Appstate       	    Frontpage
	LogScreenshot
	HoverText      	    Chemicals
	ClickText      	    Pool Algaecides
	LogScreenshot
	ClickText           In The Swim Pool Algaecide
	# Verify that quantity for item Y1004 is 1.. Use item nro as anchor
	VerifyInputValue    QTY:            1       anchor=Y1004
	# Buy 10 and add to cart:
	TypeText            QTY:            10      anchor=Y1004
	LogScreenshot
	ClickText           ADD TO CART             anchor=Y1004
	LogScreenshot
	# Some basic verifications:
	VerifyTexts         Description: 2 x 1/2 gallons, $39.99, 10, $399.90, View Cart (10)
	# Get Subtotal to variable.. We only want text after * : -chars
	${SUBTOTAL}         GetText         Estimated SUBTOTAL      between=* :???
	# and check that it's expected:
	ShouldBeEqual       $399.90       ${SUBTOTAL}
	ClickText           View Cart
