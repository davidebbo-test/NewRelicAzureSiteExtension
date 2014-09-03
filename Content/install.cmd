cd /D %TEMP%
IF EXIST NewRelic.Azure.WebSites (
  rd /S /q NewRelic.Azure.WebSites
)
mkdir NewRelic.Azure.WebSites
cd NewRelic.Azure.WebSites
nuget install NewRelic.Azure.WebSites

SET NEW_RELIC_FOLDER="%WEBROOT_PATH%\newrelic"
IF EXIST %NEW_RELIC_FOLDER% (
  rd /S /q %NEW_RELIC_FOLDER%
)
mkdir %NEW_RELIC_FOLDER%
cd NewRelic.Azure.WebSites*
xcopy content\newrelic %NEW_RELIC_FOLDER% /E /C
