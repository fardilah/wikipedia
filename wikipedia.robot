*** Settings ***
Documentation       Template robot main suite.

Library             SeleniumLibrary
# Library    RPA.Dialogs
# Library    RPA.Windows


*** Variables ***
${LOGIN URL}    https://www.wikipedia.org/
${BROWSER}      Chrome
${ENGLISH}      English
${ESPANOL}      Español
${DEUTSCH}      Deutsch
${ITALIANO}     Italiano
${FARSI}        فارسی
${RUSSIA}       Русский
${NIHONGO}      日本語
${FRANCE}       Français
${ZHONGWEN}     中文
${PORTUGIS}     Português

${URL_EN}       https://en.wikipedia.org/
${URL_ES}       https://es.wikipedia.org/
${URL_DE}       https://de.wikipedia.org/
${URL_IT}       https://it.wikipedia.org/
${URL_FA}       https://fa.wikipedia.org/
${URL_RU}       https://ru.wikipedia.org/
${URL_JA}       https://ja.wikipedia.org/
${URL_FR}       https://fr.wikipedia.org/
${URL_ZH}       https://zh.wikipedia.org/
${URL_PT}       https://pt.wikipedia.org/


*** Test Cases ***
Open Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Check Wikipedia
    Page Should Contain    Wikipedia
    Page Should Contain    The Free Encyclopedia

Check Language - English
    Element Text Should Be    xpath://*[@id="js-link-box-en"]/strong    ${ENGLISH}

Check Language - Spanyol
    Element Text Should Be    xpath://*[@id="js-link-box-es"]/strong    ${ESPANOL}

Check Language - Deutsch
    Element Text Should Be    xpath://*[@id="js-link-box-de"]/strong    ${DEUTSCH}

Check Language - Italia
    Element Text Should Be    xpath://*[@id="js-link-box-it"]/strong    ${ITALIANO}

Check Language - Arab
    Element Text Should Be    xpath://*[@id="js-link-box-fa"]/strong/bdi    ${FARSI}

Check Language - Russia
    Element Text Should Be    xpath://*[@id="js-link-box-ru"]/strong    ${RUSSIA}

Check Language - Nihongo
    Element Text Should Be    xpath://*[@id="js-link-box-ja"]/strong    ${NIHONGO}

Check Language - Francis
    Element Text Should Be    xpath://*[@id="js-link-box-fr"]/strong    ${FRANCE}

Check Language - Zhongwen
    Element Text Should Be    xpath://*[@id="js-link-box-zh"]/strong    ${ZHONGWEN}

Check Language - Portugis
    Element Text Should Be    xpath://*[@id="js-link-box-pt"]/strong    ${PORTUGIS}

Check Link - English
    Click Element    xpath://*[@id="js-link-box-en"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_EN}
    Go Back

Check Link - Spanyol
    Click Element    xpath://*[@id="js-link-box-es"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_ES}
    Go Back

Check Link - Deutsch
    Click Element    xpath://*[@id="js-link-box-de"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_DE}
    Go Back

Check Link - Italia
    Click Element    xpath://*[@id="js-link-box-it"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_IT}
    Go Back

Check Link - Arab
    Click Element    xpath://*[@id="js-link-box-fa"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_FA}
    Go Back

Check Link - Russia
    Click Element    xpath://*[@id="js-link-box-ru"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_RU}
    Go Back

Check Link - Nihongo
    Click Element    xpath://*[@id="js-link-box-ja"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_JA}
    Go Back

Check Link - Francis
    Click Element    xpath://*[@id="js-link-box-fr"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_FR}
    Go Back

Check Link - Zhongwen
    Click Element    xpath://*[@id="js-link-box-zh"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_ZH}
    Go Back

Check Link - Portugis
    Click Element    xpath://*[@id="js-link-box-pt"]
    ${CURRENT_URL}    Get Location
    Should Match Regexp    ${CURRENT_URL}    ${URL_PT}
    Go Back

Close Browser
    Close Browser
