require "notes-app.rb"

describe Notes do
  it 'responds to adding notes' do
    expect(subject).to respond_to(:add).with(2).arguments
  end
  it 'responds to list all notes' do
    expect(subject).to respond_to(:list)
  end
  it 'responds to read notes' do
    expect(subject).to respond_to(:read)
  end
  describe '#add' do
    it 'when u add note it is saved to array' do
      expect{ subject.add('title', 'body of text') }.to change{ subject.notes.count }.by 1
    end
    it 'returns confirmation of added note' do
      expect{ subject.add('title', 'body of text') }.to output("There are now 1 notes\n").to_stdout
    end
  end
  describe '#list' do
    it 'list output' do
      subject.add('title1', 'Body1')
      expect{ subject.list }.to output("0. title1\n").to_stdout
    end
  end
  describe '#read' do
    it 'outputs the note title and body when given index number' do
      subject.add('title1', 'Body1')
      expect{ subject.read(0) }.to output("TITLE1\nBody1\n").to_stdout
    end
  end
end
