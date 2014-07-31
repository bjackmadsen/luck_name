require ('rspec')
require ('lucky_name')

describe('lucky_name') do
  it("is true when two letters equal the same value") do
    expect(lucky_name('Ar')).to(eq(true))
  end
end



