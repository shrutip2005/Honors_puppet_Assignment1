🐳 Puppet Assignment – Mastering the Windows Agent

📌 Objective

This project demonstrates how to use Puppet to manage and control a remote Windows machine using Desired State Configuration (DSC).
All configurations are defined in code, and the Puppet Agent ensures the system always remains in the desired state.


⚙️ Technologies Used

Puppet (Master & Agent)

Docker (for Puppet Server)

Windows OS (Agent Machine)

Chocolatey (Package Manager)

🚀 Tasks Implemented
🔹 Level 1: Digital Fingerprint

Created directory: C:/PuppetMission

Created file: hello.txt

Content:

Puppet was here at Shruti

✅ Self-healing: File is recreated if deleted

🔹 Level 2: Service Lock

Managed Windows Service: Print Spooler

Ensured:

Service is stopped

Service is disabled

✅ Automatically stops if manually started

🔹 Level 3: Secret Agent Registry

Created Registry Key:

HKLM\Software\PuppetMaster

Added Value:

MissionStatus = Success
🔹 Level 4: Silent Installer

Installed Notepad++ using Chocolatey

✅ Automatically reinstalls if removed

🔹 Level 5: Identity Report (Facts)

Created file: spec_report.txt

Includes system details:

OS Name

OS Version

RAM Size

Example:

This machine is running Windows 10 and has 8 GB of RAM.
🏆 Boss Level: Self-Healing Website

Installed IIS (Web Server)

Created website file:

C:/inetpub/wwwroot/index.html

Ensured:

Website content is managed by Puppet

IIS service (W3SVC) is always running

✅ Automatically restores content if modified

▶️ How to Run
Step 1: Start Puppet Server (Docker)
docker run -d --name puppet-server -p 8140:8140 puppet/puppetserver
Step 2: Copy Code into Container
docker cp puppet-assignment/ puppet-server:/etc/puppetlabs/code/environments/production/
Step 3: Run Puppet Agent (Windows)

Open PowerShell as Administrator:

puppet agent -t
Step 4: Accept Certificate (on Puppet Server)
puppetserver ca sign --all
📦 Required Puppet Modules

Install on Puppet Master:

puppet module install puppetlabs-registry
puppet module install puppetlabs-chocolatey
puppet module install puppetlabs-windowsfeature
