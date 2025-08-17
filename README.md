# Security Analyst Subagent for Claude Code

A comprehensive security analysis subagent for Claude Code that provides expert cybersecurity guidance, vulnerability assessment, and security recommendations for software projects.

## Quick Installation

Run this one-liner to install the security-analyst subagent:

```bash
bash <(curl -s https://raw.githubusercontent.com/rebaze/security-analyst/refs/heads/main/install.sh)
```

Or if you prefer wget:

```bash
bash <(wget -qO- https://raw.githubusercontent.com/rebaze/security-analyst/refs/heads/main/install.sh)
```

## What it does

The security-analyst subagent provides:

- **Comprehensive Security Assessments** - Thorough analysis of code, architectures, and dependencies
- **Vulnerability Identification** - Scans for common vulnerabilities (OWASP Top 10, CWE patterns)
- **Supply Chain Analysis** - Evaluates dependency risks and supply chain threats
- **Java-Specific Security** - Specialized knowledge for Java ecosystem security
- **Actionable Recommendations** - Concrete, implementable security guidance with risk prioritization

## Usage

After installation, you can use the subagent in Claude Code:

```
@security-analyst analyze this authentication module for vulnerabilities
@security-analyst review the security of this API endpoint
@security-analyst evaluate this third-party dependency for risks
```

## Features

- Threat modeling and attack vector identification
- Authentication and authorization analysis
- Input validation and sanitization review
- Cryptographic implementation assessment
- Container and deployment security guidance
- Privacy and data protection evaluation
