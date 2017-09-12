require('rspec')
require('pry')
require('sphinx')

describe('sphinx') do
  example = Sphinx.new()

  it('will answer riddle 1') do
    expect(example.riddle_test?('secret')).to(eq(true))
  end

  it('will answer riddle 2') do
    expect(example.riddle_test?('unknown')).to(eq(true))
  end

  it('will answer riddle 3') do
    expect(example.riddle_test?('who knows')).to(eq(true))
  end
end
