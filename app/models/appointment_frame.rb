class AppointmentFrame < ApplicationRecord

  # アソシエーション
  belongs_to :appointment

  #enum設定
  ##予約枠ステータス
  enum app_frame_status: { temporary_hold: 0, reserved: 1, cancel: 2 }

end
