*** Settings ***
Documentation       Template robot main suite.
#Suite Setup     ${BROWSER}
Resource    variable.resource

Library             SeleniumLibrary
# Library    RPA.Dialogs
# Library    RPA.Windows

*** Test Cases ***
Open Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Window Size    390  844

Check Wikipedia
    Page Should Contain    Wikipedia
    Page Should Contain    The Free Encyclopedia

Check Language - English
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-en"]/strong    ${ENGLISH}

Check Language - Spanyol
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-es"]/strong    ${ESPANOL}

Check Language - Deutsch
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-de"]/strong    ${DEUTSCH}

Check Language - Italia
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-it"]/strong    ${ITALIANO}

Check Language - Arab
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-fa"]/strong/bdi    ${FARSI}

Check Language - Russia
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-ru"]/strong    ${RUSSIA}

Check Language - Nihongo
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-ja"]/strong    ${NIHONGO}

Check Language - Francis
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-fr"]/strong    ${FRANCE}

Check Language - Zhongwen
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-zh"]/strong    ${ZHONGWEN}

Check Language - Portugis
    [Tags]  Language
    Element Text Should Be    xpath://*[@id="js-link-box-pt"]/strong    ${PORTUGIS}

Check Link - English
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-en"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_EN}
    Go Back

Check Link - Spanyol
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-es"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_ES}
    Go Back

Check Link - Deutsch
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-de"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_DE}
    Go Back

Check Link - Italia
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-it"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_IT}
    Go Back

Check Link - Arab
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-fa"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_FA}
    Go Back

Check Link - Russia
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-ru"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_RU}
    Go Back

Check Link - Nihongo
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-ja"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_JA}
    Go Back

Check Link - Francis
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-fr"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_FR}
    Go Back

Check Link - Zhongwen
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-zh"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_ZH}
    Go Back

Check Link - Portugis
    [Tags]  Link
    Click Element    xpath://*[@id="js-link-box-pt"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_PT}
    Go Back

Close Browser
    Close Browser
