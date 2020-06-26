*** Settings ***
Library             Dialogs
Library             QWeb
Library             String


*** Variables ***
${BROWSER}                  chrome
${Mini_Quick}		Quick Order
${ItemNumber_Quick}	Y1004
${AddToCartButton_Quick}	Add to cart

*** Keywords ***
Setup Browser
    Open Browser    about:blank    ${BROWSER}
    [tags]		smoke
	
End suite
    Close All Browsers
    Sleep    2
Example Test
	

Appstate
	[Documentation]    Appstate handler
	[Arguments]        ${state}
	${state}=            Convert To Lowercase    ${state}
	Run Keyword If      '${state}' == 'frontpage'
	...               FrontPage

FrontPage
	GoTo    https://cortzuser:p0o!0pen@its-stg-itsstore.sparkred.com/
  
