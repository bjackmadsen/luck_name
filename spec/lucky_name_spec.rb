require ('rspec')
require ('lucky_name')

describe('lucky_name') do
  it("is true when two letters equal the same value") do
    expect(lucky_name('Ar')).to(eq(true))
  end

  it("is true when more than two letters are equal in value") do
    expect(lucky_name('bops')).to(eq(true))
  end

  it("is false if the first half of word is not equal to the second") do
    expect(lucky_name('band')).to(eq(false))
  end

  it("will remove the middle letter of an odd numbered word and return true or false") do
    expect(lucky_name('Brandon')).to(eq(false))
  end
end




