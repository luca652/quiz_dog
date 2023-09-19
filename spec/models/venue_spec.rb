require 'rails_helper'

describe 'Venue' do
  let(:venue) do
    Venue.new(name: 'The Alma', address: '12 Baker Street', phone_number: '3333333333',
              user_id: 1, time: Time.new, day_of_the_week: 'Sunday')
  end

  it 'has a name' do
    expect(venue.name).to eq 'The Alma'
  end

  it 'can change name' do
    venue.name = 'The Badger'
    expect(venue.name).to eq 'The Badger'
  end

  it 'has an address' do
    expect(venue.address).to eq '12 Baker Street'
  end

end
