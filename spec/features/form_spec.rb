require 'rails_helper'

describe Form do

  let(:form) { FactoryGirl.create(:form) }

  subject { form }

  #общая валидация
  it { should respond_to(:form_name) }
  it { should respond_to(:telephone) }
  it { should respond_to(:filial_id) }

  it { should be_valid }

  #провальная валидация на отсутствие
  describe "when name is not present" do
    before { form.form_name = " " }
    it { should_not be_valid }
  end

  describe "when telephone is not present" do
    before { form.telephone = " " }
    it { should_not be_valid }
  end

  #провальная валидация на длину
  describe "when name is little" do
    before { form.form_name = "a" * 2 }
    it { should_not be_valid }
  end

  #провальная валидация на русский язык
  describe "when name is not russian" do
    before { form.form_name = "name"}
    it { should_not be_valid }
  end

  #прохождение валидации на русский язык
  describe "when name is russian" do
    before { form.form_name = "денис"}
    it { should be_valid }
  end

  #валидация связей
  it 'has one filial' do
    asso = described_class.reflect_on_association(:filial)
    expect(asso.macro).to eq :belongs_to
  end




end