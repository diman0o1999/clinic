require 'rails_helper'

describe Review do

  let(:review) { FactoryGirl.create(:review) }

  subject { review }

  #общая валидация
  it { should respond_to(:text_reviews) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when text_reviews is not present" do
    before { review.text_reviews = " " }
    it { should_not be_valid }
  end

  #провальная валидация на длину
  describe "when text_reviews is little" do
    before { review.text_reviews = "а" * 4 }
    it { should_not be_valid }
  end

  describe "when text_reviews is ok" do
    before { review.text_reviews = "а" * 5 }
    it { should be_valid }
  end

  #провальная валидация на русский язык
  describe "when text_reviews is not russian" do
    before { review.text_reviews = "review"}
    it { should_not be_valid }
  end

  #прохождение валидации на русский язык
  describe "when text_reviews is russian" do
    before { review.text_reviews = "отзыв"}
    it { should be_valid }
  end


  #валидация связей
  it 'has one user' do
    asso = described_class.reflect_on_association(:user)
    expect(asso.macro).to eq :belongs_to
  end




end