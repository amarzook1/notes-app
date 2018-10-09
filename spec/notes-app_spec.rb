require "notes-app.rb"

describe Notes do
    it 'responds to adding notes' do
        expect(subject).to respond_to(:add).with(2).arguments
    end
    it 'responds to list all notes' do
        expect(subject).to respond_to(:list)
    end
end