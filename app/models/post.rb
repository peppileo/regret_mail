class Post < ApplicationRecord
    scope :latest, -> { order(created_at: :desc) }  #desc = 降順
    scope :old, -> { order(created_at: :asc) }  #asc = 昇順
end
