SET NEW_RELIC_FOLDER="%WEBROOT_PATH%\newrelic"
IF EXIST %NEW_RELIC_FOLDER% (
  rd /S /q %NEW_RELIC_FOLDER%
)
