require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe "ユーザー新規登録" do
    context "新規登録がうまくいく時" do
      it "全てあれば登録できる" do
        expect(@user).to be_valid
      end
    end
    context "うまくいかない時" do
      it "nicknameが空では登録できない" do
        @user.name = nil
        @user.valid? 
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank") 
      end
      it "passwordが空では登録できない" do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank") 
      end
    end
  end
end
