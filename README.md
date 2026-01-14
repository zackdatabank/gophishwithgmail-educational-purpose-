# gophishwithgmail-educational-purpose

1. Process Flow
The lifecycle of a phishing engagement typically follows these five stages:
Preparation: Establish the "Rules of Engagement" (ROE) and get written authorization.
Scenario Design: Create the lures (emails/landing pages) based on real-world threats relevant to the client.
Execution: Send the emails in a staggered manner to bypass spam filters and maintain realism.
Education: Provide "Just-in-Time" training to users who fail the test (e.g., a "You clicked!" educational page).
Reporting: Present findings to
2. Procedure & Guidelines
To ensure the exercise is ethical and effective, follow these professional guidelines:
Phase A: Administrative & Legal (Crucial)
Written Authorization: Never start without a signed document specifying the scope, dates, and targets.
Stakeholder Buy-in: Notify IT and HR. You don't want the IT team to trigger an expensive incident response protocol for a simulation.
Whitelisting: Coordinate with the client’s IT team to whitelist your simulation IPs/domains in their Email Security Gateway (ESG) to ensure delivery.
Phase B: Scenario Selection
Avoid "Over-the-Line" Lures: Do not use sensitive topics like "Mass Layoff Notices," "Salary Changes," or "Health Benefits" unless explicitly requested, as these damage employee morale and trust.
Difficulty Scaling: Start with "Low" difficulty (obvious typos, generic sender) and progress to "High" difficulty (spear-phishing style, mimicking internal tools).

3. Requirements
Software Requirements
You can use open-source or commercial platforms.
Gophish (Open-Source): The industry standard for self-hosted, manual setups. Requires more configuration but is free.
Commercial Platforms: (e.g., KnowBe4, Infosec IQ, or Microsoft Defender Attack Simulation). These come with pre-made templates and automated reporting.
Infrastructure: A Linux-based VPS (like AWS, DigitalOcean, or Azure) to host your phishing server.
Domain Names: Purchase domains that look similar to the client's (e.g., client-support.com instead of client.com).
Hardware Requirements
Consultant Laptop: Minimum 16GB RAM for running local testing environments.
Server: A standard VPS with 2 vCPUs and 4GB RAM is usually sufficient for handling campaigns of up to 5,000 users.

4. Key Metrics for the Report
Your customer will want to see these data points: | Metric | Description | | :--- | :--- | | Open Rate | Percentage of users who opened the email. | | Click Rate | Percentage of users who clicked the "malicious" link. | | Credential Capture | Number of users who submitted data into the fake landing page. | | Reporting Rate | Most Important: How many users used the "Report Phishing" button instead of clicking? |
