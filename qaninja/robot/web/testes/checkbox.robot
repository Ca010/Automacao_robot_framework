***Settings***
Resource        base.robot
Test Setup      Nova sessao  
Test Teardown   Encerra sessao

***Variables***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man'] 
${check_pantera}    xpath://*[@id='checkboxes']/input[7]    

***Test Cases***
Marcando opcao com id
    Go to                           ${url}/checkboxes   
    Select Checkbox                 ${check_thor} 
    Checkbox Should Be Selected     ${check_thor} 


Marcando opcao com CSS Selector  
    Go to                           ${url}/checkboxes   
    Select Checkbox                 ${check_iron} 
    Checkbox Should Be Selected     ${check_iron} 



Marcando opcao com Xpath  
    Go to                           ${url}/checkboxes   
    Select Checkbox                 ${check_pantera} 
    Checkbox Should Be Selected     ${check_pantera} 
  

    