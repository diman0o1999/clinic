require 'rails_helper'

describe Medic do

  let(:medic) { FactoryGirl.create(:medic) }

  subject { medic }

  #общая валидация
  it { should respond_to(:post1) }
  it { should respond_to(:about) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when post1 is not present" do
    before { medic.post1 = " " }
    it { should_not be_valid }
  end

  describe "when about is not present" do
    before { medic.about = " " }
    it { should_not be_valid }
  end

  #провальная валидация на длину
  describe "when post1 is little" do
    before { medic.post1 = "а" * 2 }
    it { should_not be_valid }
  end

  describe "when post1 is ok" do
    before { medic.post1 = "а" * 5 }
    it { should be_valid }
  end

  describe "when about is little" do
    before { medic.post1 = "а" * 2 }
    it { should_not be_valid }
  end

  describe "when about is ok" do
    before { medic.post1 = "а" * 50 }
    it { should be_valid }
  end

  #провальная валидация на русский язык
  describe "when post1 is not russian" do
    before { medic.post1 = "post #1"}
    it { should_not be_valid }
  end

  #прохождение валидации на русский язык
  describe "when post1 is russian" do
    before { medic.post1 = "Должность №1"}
    it { should be_valid }
  end

  #провальная валидация на русский язык
  describe "when about is not russian" do
    before { medic.about = "The test information about the doctor, his diplomas, achievements, work experience."}
    it { should_not be_valid }
  end

  #прохождение валидации на русский язык
  describe "when about is russian" do
    before { medic.about = "Тестовая информация о враче, его дипломы, заслуги, опыт работы."}
    it { should be_valid }
  end


  #валидация связей
  it 'has one user' do
    asso = described_class.reflect_on_association(:user)
    expect(asso.macro).to eq :belongs_to
  end

  it 'has_many diploms' do
    asso = described_class.reflect_on_association(:diploms)
    expect(asso.macro).to eq :has_many
  end

  it 'has_many questions' do
    asso = described_class.reflect_on_association(:questions)
    expect(asso.macro).to eq :has_many
  end

  it 'has_and_belongs_to_many filials' do
    asso = described_class.reflect_on_association(:filials)
    expect(asso.macro).to eq :has_and_belongs_to_many
  end

  it 'has_and_belongs_to_many departaments' do
    asso = described_class.reflect_on_association(:departaments)
    expect(asso.macro).to eq :has_and_belongs_to_many
  end

end