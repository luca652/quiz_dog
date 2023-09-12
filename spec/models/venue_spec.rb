require 'rails_helper'

describe 'Venue' do
  it 'has a name' do
    venue = Venue.new(name: 'The Alma')
    expect(venue.name).to eq 'The Alma'
  end
end
