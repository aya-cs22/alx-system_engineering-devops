# Postmortem: The Apache Debacle of June 5, 2024

## Issue Summary:
- **Duration:** June 5, 2024, 9:00 AM - 1:00 PM (GMT)
- **Impact:** The Apache web server decided to take a coffee break, leaving users stranded with HTTP 404 errors.
- **Root Cause:** A misconfigured file extension (phpp instead of php) in the Apache server configuration left PHP pages feeling lost and confused.

![Apache Debacle Diagram]([images/apache_debacle_diagram.png](https://github.com/aya-cs22/alx-system_engineering-devops/blob/master/0x19-postmortem/Screenshot%20from%202024-06-09%2014-34-49.png?raw=true))

## Timeline:
- **9:00 AM:** The monitoring system went berserk, sounding alarms about a surge in HTTP 404 errors.
- **9:15 AM:** We noticed the server acting up and dove headfirst into investigation mode.
- **9:20 AM:** Sifting through Apache server logs, we suspected foul play in PHP processing.
- **9:40 AM:** With furrowed brows, we pondered the possibility of a misconfiguration in Apache's PHP handling.
- **10:00 AM:** After ruling out any hardware shenanigans, we briefly considered blaming the network. Spoiler alert: it wasn't the network's fault.
- **10:30 AM:** With no solution in sight, we called in the cavalry—aka the DevOps team—for reinforcements.
- **10:40 AM:** Lo and behold! We unearthed the mischievous culprit—a misconfigured file extension (phpp) lurking within the depths of the Apache server process.
- **11:00 AM:** Armed with this newfound knowledge, we valiantly corrected the file extension in the Apache server configuration, rescuing PHP pages from the brink of oblivion.

## Root Cause and Resolution:
- **Root Cause:** A mischievous misconfigured file extension (phpp) caused PHP pages to throw a temper tantrum, resulting in the server downtime.
- **Resolution:** We swiftly banished the impostor extension and restored order by reinstating the rightful (php) extension in the Apache server configuration.

## Corrective and Preventative Measures:
- **Improvements:**
  - Implement stricter configuration validation checks to catch syntax errors and mischievous file extensions.
  - Enhance monitoring systems to keep a vigilant eye on HTTP error rates and server behavior.
- **Tasks:**
  - Update Apache server configuration to rectify the misconfigured file extension.
  - Review and update documentation for Apache server configuration best practices.
  - Conduct specialized training sessions on effective debugging techniques and Apache server maintenance to equip our team with the tools needed to face future challenges.

In the aftermath of the Great Apache Debacle of June 5, 2024, we emerged victorious, armed with valuable lessons and a renewed commitment to the reliability of our web server infrastructure. Remember, even in the darkest hours of server downtime, a dash of humor and resilience can make all the difference. Let's keep the servers humming and the laughter flowing!

