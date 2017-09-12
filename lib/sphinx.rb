class Sphinx
  attr_reader  :question, :riddles
  def initialize()
    @riddles = {
      'If you have it you want to share it but if you share it you haven\'t got it.' => ['secret', 'a secret'],
      'riddle2' => ['unknown', 'not known'],
      'riddle3' => ['who knows', 'nobody knows']}
  end

  def riddle_picker
    @question = @riddles.keys.sample()
  end

  def riddle_test?(answer)
    @riddles.fetch(@question).include? answer
  end

end
