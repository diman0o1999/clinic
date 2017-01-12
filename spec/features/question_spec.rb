require 'rails_helper'

describe Question do

  let(:question) { FactoryGirl.create(:question) }

  subject { question }

  #общая валидация
  it { should respond_to(:text_question) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when text_question is not present" do
    before { question.text_question = " " }
    it { should_not be_valid }
  end

  #провальная валидация на длину
  describe "when text_question is little" do
    before { question.text_question = "а" * 4 }
    it { should_not be_valid }
  end

  describe "when text_question is ok" do
    before { question.text_question = "а" * 5 }
    it { should be_valid }
  end

  #провальная валидация на русский язык
  describe "when text_question is not russian" do
    before { question.text_question = "review"}
    it { should_not be_valid }
  end

  #прохождение валидации на русский язык
  describe "when text_question is russian" do
    before { question.text_question = "отзыв"}
    it { should be_valid }
  end


  #валидация связей
  it 'has one medic' do
    asso = described_class.reflect_on_association(:medic)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has one patient' do
    asso = described_class.reflect_on_association(:patient)
    expect(asso.macro).to eq :belongs_to
  end




end