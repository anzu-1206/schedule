class Newdate < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :startday, numericality: true, presence: true

    validates :endday, :expiration_date_cannot_be_in_the_past, numericality: true, presence: true
    def expiration_date_cannot_be_in_the_past
        if :startday < :endday
            errors.add(:endday, "は開始日より前の日付は使えません")
        end
    end

    validates :memo, length: { maximum: 500 }
end
