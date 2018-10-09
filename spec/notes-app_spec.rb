require "notes-app.rb"

describe Notes do
    it 'responds to adding notes' do
        expect(subject).to respond_to(:add).with(2).arguments
    end
    it 'responds to list all notes' do
        expect(subject).to respond_to(:list)
    end
    describe '#add' do
        it 'when u add note it is saved to array' do
        expect{ subject.add("title", "body of text") }.to change{ subject.notes.count }.by 1
    end
    end
end