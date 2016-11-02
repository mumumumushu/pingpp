# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  order_no   :string
#  channel    :string
#  body       :string
#  subject    :string
#  amount     :integer
#  metadata   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
end
