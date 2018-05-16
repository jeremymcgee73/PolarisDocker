# PolarisDocker

## Quick non-working PowerShell Polaris demo running in a nano docker container.

docker build .\docker\ --no-cache -t polaris
docker run -p 8080:80 polaris