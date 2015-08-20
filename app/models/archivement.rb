class Archivement < ActiveRecord::Base
    belongs_to :user
    belongs_to :condition
end
