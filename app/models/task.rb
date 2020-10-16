class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # activehashモデルとのアソシエーション
  belongs_to_active_hash :category

  # テーブルとのアソシエーション
  belongs_to :user
    
end
