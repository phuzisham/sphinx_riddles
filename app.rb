require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

new_riddle = Sphinx.new
get('/') do
  # new_riddle = Sphinx.new
  @display = new_riddle.riddle_picker
  erb(:input)
end

post('/output') do
  if new_riddle.riddle_test?(params.fetch('answer'))
    @result = 'Right Answer'
    erb(:output)
  else
    @display = new_riddle.question
    @try = 'Wrong Answer. Try Again.'
    erb(:fail)
  end
end
