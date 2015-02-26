require 'spec_helper'

describe Link do

  context 'Demonstration of how Datamapper Works' do

    it 'a link should be created then retrieved from the database' do
      expect(Link.count).to eq 0
      Link.create(title: 'Makers Academy',
                  url:   'http://makersacademy.com')
      expect(Link.count).to eq 1
      link = Link.first
      expect(link.title).to eq 'Makers Academy'
      expect(link.url).to eq 'http://makersacademy.com'
      link.destroy
      expect(Link.count).to eq 0
    end

  end

end
