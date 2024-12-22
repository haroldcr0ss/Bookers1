class Book < ApplicationRecord

  # see over アプリケーション5章
  # see over アプリケーション7章
  # see over アプリケーション10章
  
    # has_one_attached :image
  
    validates :title, presence: true
    validates :body, presence: true
    # validates :image, presence: true
  
  end
  