*** Variables ***
# URL
${LOGIN URL}    https://www.wikipedia.org/

#BROWSER
#${BROWSER}  Chrome  

# Language / Bahasa
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

# Link
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

*** keywords ***
Test1 Webservice
    #URL
    SET GLOBAL VARIABLE ${LOGIN URL}
    
    # Language / Bahasa
    SET GLOBAL VARIABLE  ${ENGLISH}
    SET GLOBAL VARIABLE  ${ESPANOL}
    SET GLOBAL VARIABLE  ${DEUTSCH}
    SET GLOBAL VARIABLE  ${ITALIANO}
    SET GLOBAL VARIABLE  ${FARSI}
    SET GLOBAL VARIABLE  ${RUSSIA}
    SET GLOBAL VARIABLE  ${NIHONGO}
    SET GLOBAL VARIABLE  ${FRANCE}
    SET GLOBAL VARIABLE  ${ZHONGWEN}
    SET GLOBAL VARIABLE  ${PORTUGIS}

    # Link
    SET GLOBAL VARIABLE  ${URL_EN}
    SET GLOBAL VARIABLE  ${URL_ES}
    SET GLOBAL VARIABLE  ${URL_DE}
    SET GLOBAL VARIABLE  ${URL_IT}
    SET GLOBAL VARIABLE  ${URL_FA}
    SET GLOBAL VARIABLE  ${URL_RU}
    SET GLOBAL VARIABLE  ${URL_JA}
    SET GLOBAL VARIABLE  ${URL_FR}
    SET GLOBAL VARIABLE  ${URL_ZH}
    SET GLOBAL VARIABLE  ${URL_PT}