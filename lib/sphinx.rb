class Sphinx
  attr_reader  :question, :riddles
  def initialize()
    @riddles = {
      'riddle1' => 'secret',
      'riddle2' => 'unknown',
      'riddle3' => 'who knows'}
    @question = riddles.keys.sample()
  end

  def riddle_test?(answer)
    if (@riddles.fetch(@question) == answer)
      true
    end
  end

end
