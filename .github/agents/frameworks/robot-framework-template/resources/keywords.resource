*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    String
Library    DateTime
Library    JSONLibrary

Documentation    Common keywords for API testing and test utilities

*** Variables ***
${BASE_URL}    ${ENV_BASE_URL}
${TIMEOUT}     ${ENV_TIMEOUT}

*** Keywords ***
# Session Management
Create API Session
    [Documentation]    Creates a new API session with base URL
    [Arguments]    ${base}=${BASE_URL}    ${alias}=api
    Create Session    ${alias}    ${base}    verify=True    timeout=${TIMEOUT}

Close All Sessions
    [Documentation]    Closes all active API sessions
    Delete All Sessions

# Authentication Keywords
Auth Header
    [Documentation]    Creates authorization header with Bearer token
    [Arguments]    ${token}
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}
    [Return]    ${headers}

Create Auth Header With API Key
    [Documentation]    Creates authorization header with API Key
    [Arguments]    ${api_key}
    ${headers}=    Create Dictionary    X-API-Key=${api_key}
    [Return]    ${headers}

Set Default Headers
    [Documentation]    Sets default headers for all requests
    [Arguments]    ${headers}
    Set Suite Variable    ${DEFAULT_HEADERS}    ${headers}

# HTTP Request Keywords
GET Request With Auth
    [Documentation]    Performs GET request with authentication
    [Arguments]    ${path}    ${headers}=${DEFAULT_HEADERS}    ${expected_status}=200
    ${response}=    GET On Session    api    ${path}    headers=${headers}    expected_status=${expected_status}
    [Return]    ${response}

POST Request With Auth
    [Documentation]    Performs POST request with authentication and body
    [Arguments]    ${path}    ${data}    ${headers}=${DEFAULT_HEADERS}    ${expected_status}=201
    ${response}=    POST On Session    api    ${path}    json=${data}    headers=${headers}    expected_status=${expected_status}
    [Return]    ${response}

PUT Request With Auth
    [Documentation]    Performs PUT request with authentication and body
    [Arguments]    ${path}    ${data}    ${headers}=${DEFAULT_HEADERS}    ${expected_status}=200
    ${response}=    PUT On Session    api    ${path}    json=${data}    headers=${headers}    expected_status=${expected_status}
    [Return]    ${response}

DELETE Request With Auth
    [Documentation]    Performs DELETE request with authentication
    [Arguments]    ${path}    ${headers}=${DEFAULT_HEADERS}    ${expected_status}=204
    ${response}=    DELETE On Session    api    ${path}    headers=${headers}    expected_status=${expected_status}
    [Return]    ${response}

PATCH Request With Auth
    [Documentation]    Performs PATCH request with authentication and body
    [Arguments]    ${path}    ${data}    ${headers}=${DEFAULT_HEADERS}    ${expected_status}=200
    ${response}=    PATCH On Session    api    ${path}    json=${data}    headers=${headers}    expected_status=${expected_status}
    [Return]    ${response}

# Validation Keywords
Status Code Should Be
    [Documentation]    Validates response status code
    [Arguments]    ${response}    ${expected_status}
    Should Be Equal As Numbers    ${response.status_code}    ${expected_status}

Response Should Contain
    [Documentation]    Validates that response contains specific field
    [Arguments]    ${response}    ${field}
    ${json}=    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${json}    ${field}

Response Should Match Schema
    [Documentation]    Validates response against JSON schema
    [Arguments]    ${response}    ${schema_file}
    ${schema}=    Load JSON From File    ${schema_file}
    ${json}=    Set Variable    ${response.json()}
    Validate Json    ${json}    ${schema}

Response Time Should Be Less Than
    [Documentation]    Validates response time is within threshold
    [Arguments]    ${response}    ${max_seconds}
    ${elapsed}=    Set Variable    ${response.elapsed.total_seconds()}
    Should Be True    ${elapsed} < ${max_seconds}    Response time ${elapsed}s exceeded ${max_seconds}s

# Data Manipulation Keywords
Load Test Data
    [Documentation]    Loads test data from JSON or CSV file
    [Arguments]    ${file_path}
    ${data}=    Get File    ${file_path}
    ${json}=    Evaluate    json.loads('''${data}''')    json
    [Return]    ${json}

Generate Random String
    [Documentation]    Generates random alphanumeric string
    [Arguments]    ${length}=10
    ${random}=    Generate Random String    ${length}    [LETTERS][NUMBERS]
    [Return]    ${random}

Get Current Timestamp
    [Documentation]    Returns current timestamp in ISO format
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%dT%H:%M:%S
    [Return]    ${timestamp}

Format Date
    [Documentation]    Formats date to specified format
    [Arguments]    ${date}    ${format}=%Y-%m-%d
    ${formatted}=    Convert Date    ${date}    result_format=${format}
    [Return]    ${formatted}
