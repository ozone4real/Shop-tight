# frozen_string_literal: true

module Types
  class TransactionCompletedDataType < BaseObject
    field :txid, Int, null: true
    field :txref, String, null: true
    field :flwref, String, null: true
    field :devicefingerprint, String, null: true
    field :cycle, String, null: true
    field :amount, Int, null: true
    field :currency, String, null: true
    field :chargedamount, Int, null: true
    field :appfee, Int, null: true
    field :merchantfee, Int, null: true
    field :merchantbearsfee, Int, null: true
    field :chargecode, String, null: true
    field :authmodel, String, null: true
    field :ip, String, null: true
    field :narration, String, null: true
    field :status, String, null: true
    field :vbvcode, String, null: true
    field :vbvmessage, String, null: true
    field :acctalias, String, null: true
    field :acctisliveapproved, Int, null: true
    field :orderref, String, null: true
    field :paymentplan, String, null: true
    field :paymentpage, String, null: true
    field :raveref, String, null: true
    field :amountsettledforthistransaction, Int, null: true
    field :card, CardType, null: true
  end
end
