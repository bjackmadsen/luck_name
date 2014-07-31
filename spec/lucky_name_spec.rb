require ('rspec')
require ('lucky_name')

describe('lucky_name') do
  it("is true when two letters equal the same value") do
    expect(lucky_name('Ar')).to(eq(true))
  end
  it("is true when more than two letters are equal in value") do
    expect(lucky_name('bops')).to(eq(true))
  end
end



