#------------- Ruby/Rails ---------------
alias be="bundle exec"
alias parl=parallel_rake_spec
alias rntest=RAILS_ENV=test
alias rndev=RAILS_ENV=development
alias rakemigratetest='rake db:migrate RAILS_ENV=test'
alias railsdbtest='RAILS_ENV=test rails db'

parallel_rake_spec () {
  local path=$1
  local formatter=$2
  local number_of_threads=$3

  if [ -z $path ]
  then
    path='spec'
  fi

  if [ -z $format ]
  then
    formatter='Fuubar'
  fi

  if [ -z $number_of_threads ]
  then
    number_of_threads=8
  fi

  bundle exec rake parallel:spec\[$number_of_threads,"$path"\] SPEC_OPTS="--format ${formatter}"
}
