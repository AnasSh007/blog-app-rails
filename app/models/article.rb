class Article < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  # after_create_commit :print_message
  after_update_commit :print_message
  after_save_commit :print_message1
  # before_validation :remove_whitespaces
  # after_validation :print_message
  # around_create :print_title, if: @title=="Anas"
  # before_create :print_title, if: @title=="Anas"
  #
  # def before_save(record)
  #   if @title=="Anas"
  #     :print_title
  #   end
  # end
  # after_commit :print_message, on: :destroy
  # after_destroy :record_deleted
  # after_destroy :Callbacks.after_destroy
  # after_find :record_found
  # after_touch :touched
  # after_initialize do
  #   puts "===> the record is initialized <==="
  # end
  # after_destroy_commit :record_deleted
  # private
  # def title?
  #   if @title == "Anas"
  #     true
  #   end
  #   false
  # end
  # def print_title
  #   print "=======>  Hello ",@title, "   <========"
  # end
  # def print_message
  #   puts "===> The article is updated/saved <==="
  # end
  # def print_message1
  #   puts "===> The article is updated/saved <==="
  # end
  # def remove_whitespaces
  #   title.strip!
  #   puts "== white spaces removed =="
  # end
  # def record_deleted
  #   puts "== record is deleted =="
  # end
  # def record_found
  #   puts "== record found =="
  # end
  # def touched
  #   puts " ===> hey u have touched me <=== "
  # end
end
