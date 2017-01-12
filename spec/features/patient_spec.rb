require 'rails_helper'

describe Patient do

  let(:patient) { FactoryGirl.create(:patient) }

  subject { patient }

  #общая валидация
  it { should respond_to(:tel_number) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when tel_number is not present" do
    before { patient.tel_number = " " }
    it { should_not be_valid }
  end

  #валидация связей
  it 'has one user' do
    asso = described_class.reflect_on_association(:user)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has_many questions' do
    asso = described_class.reflect_on_association(:questions)
    expect(asso.macro).to eq :has_many
  end




end