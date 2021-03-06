require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "methods" do
    it "can find a random transaction" do
      create_list(:transaction, 3)
      found_transaction = Transaction.random

      expect(Transaction.all.include?(found_transaction)).to be_truthy
      expect(found_transaction).to be_a(Transaction)
    end
  end

  describe "relationships" do
    it "belongs to an invoice" do
      transaction = create(:transaction)

      expect(transaction).to respond_to(:invoice)
    end
  end
end
