get-coverage () {
  echo "require 'json'; begin;puts JSON[File.read('coverage/coverage.json')]['metrics']['covered_percent'].round(2).to_s;rescue;puts 0;end" | ruby
}
