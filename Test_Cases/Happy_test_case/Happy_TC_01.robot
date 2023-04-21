*** Settings ***
Library            RequestsLibrary

*** Variables ***
${base_url}    https://www.zippopotam.us/
${country}     us
${zip_code}    32003

*** Tasks ***
Get_Info
    Create Session    first_session    ${base_url}
    ${response}=     Get Request    first_session    ${country}/${zip_code}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}