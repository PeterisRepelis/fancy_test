class Survey < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :question_1, :question_2, :question_3, :question_4, :question_5, :shoe_size, :surname
  validates :name, :surname, :email, :birthday,:shoe_size, :presence => true, :on => :create
  validates :question_1, :question_2, :question_3, :question_4, :question_5, :presence => true, :on => :update
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
end
