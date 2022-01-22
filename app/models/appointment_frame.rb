class AppointmentFrame < ApplicationRecord

  # アソシエーション
  belongs_to :appointment

  #enum設定
  ##予約枠ステータス
  enum app_frame_status: { reserved: 0, cancel: 1 }

end
