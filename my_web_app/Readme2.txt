Design a secure, centralized (Trainee/candidate) time tracking app for a company with 60 Trainees/candidates across 5 Classes. The app should:

Integrate with Google Sheets, syncing every 5 minutes with a manual sync option for admins.
Have a shared system where Trainees select their Classes, then their name from a filtered list.
Implement a clock-in system that locks users to their selected name for 8 hours, preventing clock-ins for others.
Track clock-in, clock-out, and pause times, flagging late arrivals (after 9:01 AM) automatically.
Include an admin panel for Facilitator of the training with:
Weekly summaries of employee presence and lateness
Individual employee pages showing late counts
Automated email notifications for late arrivals and convocations after three lates
Option to reset late counts for individual Trainees/candidates
Implement role-based access control with separate login processes for Trainees/candidates and admins.
Adhere to strict security measures including HTTPS, certificate pinning, JWT authentication, and secure password hashing.
Comply with data protection regulations by:
Implementing data subject access rights
Providing functionality to delete Trainees/candidates records upon request
Maintaining records of data processing operations
Conducting regular security audits
Allow for future expansion of features to enhance compliance with data protection laws.