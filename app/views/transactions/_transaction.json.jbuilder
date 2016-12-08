json.extract! transaction, :id, :credit, :debit, :created_at, :name, :user_id, :notes, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)