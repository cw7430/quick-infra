default:
    just --list

compose_file := "docker-compose-local.yaml"

local-up:
    docker compose -f {{compose_file}} up -d

local-down:
    docker compose -f {{compose_file}} down

local-down-clean:
    docker compose -f {{compose_file}} down -v

local-logs service:
    docker compose -f {{compose_file}} logs -f {{service}}