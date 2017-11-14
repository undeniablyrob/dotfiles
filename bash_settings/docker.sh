alias dc=docker-compose
alias dcd="docker-compose down"
alias dcdv="docker-compose down -v"
alias dcu="docker-compose up"
alias dcub="docker-compose up --build"

# see all running docker processes
alias dps="docker ps"

# get logs
alias dl="docker-compose logs"

# down clean and up
alias dsh="docker-compose down && docker system prune -f && docker-compose up --build -d"
alias di="docker image"

# shell into a pod by doing `de {first_three letters of sha}`
docker_exec(){ docker exec -ti $(docker ps | grep $1 |cut -d' ' -f 1) bash; }
alias de='docker_exec'
