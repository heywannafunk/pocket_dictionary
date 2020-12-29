class Document < ApplicationRecord
  validates :doc_id, presence: true
  validates :user_id, presence: true
end