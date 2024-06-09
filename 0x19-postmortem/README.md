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
- 10:00 AM: Checked server resource utilization, ruling out hardware failure.
- 9:15 AM: Initially considered network congestion, delved into network traffic analysis.
- 10:30 AM: Escalated incident to the DevOps team for further assistance.
- 10:40 AM: Discovered misconfigured file extension (phpp) during tracing of Apache server process.
- 11:00 AM: Issue resolved by correcting the file extension in Apache server configuration.

Root Cause and Resolution:
- Root Cause: Misconfigured file extension (phpp instead of php) in Apache server configuration caused the failure in serving PHP pages.
- Resolution: Corrected the file extension to (php) in the Apache server configuration, restoring proper PHP page serving functionality.

Corrective and Preventative Measures:
- Improvements:
  - Implement stricter configuration validation checks to catch syntax errors.
  - Enhance monitoring for HTTP error rates and abnormal server behavior.
- Tasks:
  - Update Apache server configuration to rectify the misconfigured file extension.
  - Review and update documentation for Apache server configuration best practices.
  - Conduct team training sessions on effective debugging techniques and Apache server maintenance.
