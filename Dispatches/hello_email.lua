-- This script will send every new value from the dataport of
-- your choice over an email message.

--------------- Configure These Variables ---------------------
local dataport_alias = 'my_datasource' -- dataport to monitor
local email_recipient = 'user@example.com' -- user email address
---------------------------------------------------------------

debug("Started")

while true do
  local timestamp = dataport_alias.wait()
  email(email_recipient, "New Data", dataport_alias[timestamp])
  debug("Triggered: "..dataport_alias[timestamp])
end
