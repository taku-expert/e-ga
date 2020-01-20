class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  counter_culture :movie, column_name: 'score', delta_column: 'rate'
end
