require 'Rspec'
require 'spec_helper'
require 'docking_station'

describe DockingStation do
 it { is_expected.to respond_to :release_bike }
 context '.dock' do
  #  it 'docks a bike' do
    #  docking_station = DockingStation.new
  #    bike = docking_station.release_bike
  #    expect(docking_station.dock).to eq bike
  #  end

   it 'does not dock a bike if no capacity' do
    docking_station = DockingStation.new
    (docking_station.bikes << Array.new(docking_station.capacity)).flatten!
    expect{docking_station.dock}.to raise_error
 end

 context '.release_bike' do
   it 'returns error when no bikes available' do
     docking_station = DockingStation.new
     expect{docking_station.release_bikes}.to raise_error
   end
 end

 it { is_expected.to respond_to(:bikes)}

end
end
