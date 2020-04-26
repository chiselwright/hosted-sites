#!/bin/bash
set -euo pipefail

docker-compose build com-theboardingparty \
	&& docker-compose up --force-recreate -d com-theboardingparty; \
	docker-compose logs --follow --tail=5
