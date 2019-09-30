class Todo < ApplicationRecord
    # rails g model Todo title:string created_by:string
    has_many :items, dependent: :destroy # create model asscociations

    # validations
    validates_presence_of :title, :created_by
end
