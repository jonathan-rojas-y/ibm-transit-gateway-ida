# IBM Cloud Python Script

This repository contains a Python script designed to interact with IBM Cloud services, specifically for managing Transit Gateway configurations.

## Features

- Automates updates to IBM Cloud Transit Gateway prefix filters.
- Configures traffic rules to allow or deny specific prefixes.
- Refreshes Transit Gateway routes.

## Requirements

- **Docker** installed on your system.
- An **IBM Cloud API Key**.
- The following environment variables must be set:
  - `IBM_CLOUD_API_KEY`: Your IBM Cloud API key.
  - `REGION`: IBM Cloud region (default: `us-south`).
  - `RESOURCE_GROUP`: IBM Cloud resource group (default: `Unique`).
  - `TG_ID`: Transit Gateway ID.
  - `PREFIX_FILTER_DENY_ID`: ID of the prefix filter to deny traffic.
  - `PREFIX_FILTER_PERMIT_ID`: ID of the prefix filter to permit traffic.
  - `PREFIX_DENY_RULE_ID`: Rule ID for denying traffic.
  - `PREFIX_PERMIT_RULE_ID`: Rule ID for permitting traffic.
  - `PREFIX`: CIDR prefix to manage (default: `172.20.19.0/29`).

## Setup

1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```
2. Build the Docker image:
   ```bash
   docker build -t ibmcloud-python-script .
   ```
3. Run the Docker container with required environment variables:
   ```bash
   docker run --rm \
     -e IBM_CLOUD_API_KEY=<your_api_key> \
     -e TG_ID=<your_tg_id> \
     -e PREFIX_FILTER_DENY_ID=<deny_filter_id> \
     -e PREFIX_FILTER_PERMIT_ID=<permit_filter_id> \
     -e PREFIX_DENY_RULE_ID=<deny_rule_id> \
     -e PREFIX_PERMIT_RULE_ID=<permit_rule_id> \
     -e PREFIX=<your_prefix> \
     ibmcloud-python-script
   ```

## Files

- `ibmcloud_script.py`: The main Python script for managing Transit Gateway configurations.
- `Dockerfile`: Docker configuration to containerize the script.

## Usage

1. Ensure all required environment variables are properly configured.
2. Build and run the Docker container as described above.
3. Monitor the output to ensure the operations complete successfully.

## Notes

- This script assumes that the IBM Cloud CLI and the `tg` plugin are installed in the Docker image.
- Modify the script or environment variables as necessary to suit your configuration.

## License

This project is licensed under the MIT License. See the LICENSE file for details.