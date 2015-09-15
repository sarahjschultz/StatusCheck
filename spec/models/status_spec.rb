require 'rails_helper'

RSpec.describe Status, type: :model do

  context 'columns' do
    it { is_expected.to have_db_column(:state).of_type(:integer) }
    it { is_expected.to have_db_column(:message).of_type(:text) }
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:state)}
  end

  context 'defaults' do
    it 'defaults state to up' do
      expect {Status.new.state.to eql :up}
    end
  end

end
