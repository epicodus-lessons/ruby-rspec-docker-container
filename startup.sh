if [ "${script}" ]; then 
  bundle exec ruby ./lib/script.rb
else
  bundle exec rspec
fi