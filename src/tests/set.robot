*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter has correct value after set
   Go To  ${HOME_URL}
   Input Text  value  123
   Click Button  Aseta
   Page Should Contain  nappia painettu 123 kertaa
