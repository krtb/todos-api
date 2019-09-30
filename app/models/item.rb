class Item < ApplicationRecord
  belongs_to :todo
  # rails g model Item name:string done:boolean todo:references
end
