class Post < ApplicationRecord
    scope :post_new, -> { order(created_at: :desc) }  #desc = 降順
    scope :post_old, -> { order(created_at: :asc) }  #asc = 昇順
    scope :receive_new, -> { order(datetime: :desc) }
    scope :receive_old, -> { order(datetime: :asc) }
end
