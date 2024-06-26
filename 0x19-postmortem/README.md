 Postmortem: Apache Web Server Outage Incident

Issue Summary:
- Duration: June 5, 2024, 9:00 AM - 11 AM (GMT)
- Impact: The Apache web server experienced downtime, causing service unavailability. many of users encountered HTTP 404 errors during the outage.
- Root Cause: A misconfigured file extension (phpp instead of php) in the Apache server configuration led to the failure in serving PHP pages.

Timeline:
- 9:00 AM: Detected an increase in HTTP 404 errors through our monitoring system.
- 9:15 AM: Noticed abnormal server behavior and initiated investigation.
- 9:20 AM: Investigated Apache server logs, suspected issues with PHP processing.
- 9:40 AM: Assumed misconfiguration in Apache's PHP handling.
- 10:00 AM: Checked server resource utilization, ruling out hardwa…
[8:14 PM, 6/9/2024] Aya Anwar: # Postmortem: The Apache Debacle of June 5, 2024

## Issue Summary:
- *Duration:* June 5, 2024, 9:00 AM - 1:00 PM (GMT)
- *Impact:* The Apache web server decided to take a coffee break, leaving users stranded with HTTP 404 errors.
- *Root Cause:* A misconfigured file extension (phpp instead of php) in the Apache server configuration left PHP pages feeling lost and confused.

![Apache Debacle Diagram](0x19-postmortem/Screenshot from 2024-06-09 14-34-49.png)
## Timeline:
- *9:00 AM:* The monitoring system went berserk, sounding alarms about a surge in HTTP 404 errors.
- *9:15 AM:* We noticed the server acting up and dove headfirst into investigation mode.
- *9:20 AM:* Sifting through Apache server logs, we suspected foul play in PHP processing.
- *9:40 AM:* With furrowed brows, we pondered the possibility of a misconfiguration in Apache's PHP handling.
- *10:00 AM:* After ruling out any hardware shenanigans, we briefly considered blaming the network. Spoiler alert: it wasn't the network's fault.
- *10:30 AM:* With no solution in sight, we called in the cavalry—aka the DevOps team—for reinforcements.
- *10:40 AM:* Lo and behold! We unearthed the mischievous culprit—a misconfigured file extension (phpp) lurking within the depths of the Apache server process.
- *11:00 AM:* Armed with this newfound knowledge, we valiantly corrected the file extension in the Apache server configuration, rescuing PHP pages from the brink of oblivion.

## Root Cause and Resolution:
- *Root Cause:* A mischievous misconfigured file extension (phpp) caused PHP pages to throw a temper tantrum, resulting in the server downtime.
- *Resolution:* We swiftly banished the impostor extension and restored order by reinstating the rightful (php) extension in the Apache server configuration.

## Corrective and Preventative Measures:
- *Improvements:*
  - Implement stricter configuration validation checks to catch syntax errors and mischievous file extensions.
  - Enhance monitoring systems to keep a vigilant eye on HTTP error rates and server behavior.
- *Tasks:*
  - Update Apache server configuration to rectify the misconfigured file extension.
  - Review and update documentation for Apache server configuration best practices.
  - Conduct specialized training sessions on effective debugging techniques and Apache server maintenance to equip our team with the tools needed to face future challenges.
