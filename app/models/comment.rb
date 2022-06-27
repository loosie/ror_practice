class Comment < ApplicationRecord
  # module in models.concern.visible.rb
  include Visible

  belongs_to :article
end
