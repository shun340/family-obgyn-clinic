class AppointmentFrame < ApplicationRecord

  belongs_to :appointment

  validates :day, presence: true
  validates :time, presence: true
  validates :start_time, presence: true, uniqueness: true

  validate :date_before_start
  validate :date_current_today
  validate :date_three_month_end

  def date_before_start
    errors.add(:day, "は過去の日付は選択できません。予約画面から正しい日付を選択してください。") if day < Date.current
  end

  def date_current_today
    errors.add(:day, "は当日は選択できません。予約画面から正しい日付を選択してください。") if day < (Date.current + 1)
  end

  def date_three_month_end
    errors.add(:day, "は3ヶ月以降の日付は選択できません。予約画面から正しい日付を選択してください。") if (Date.current >> 3) < day
  end

  def self.check_appointment_frame_day(day)
    if day < Date.current
      return "過去の日付は選択できません。正しい日付を選択してください。"
    elsif day < (Date.current + 1)
      return "当日は選択できません。正しい日付を選択してください。"
    elsif (Date.current >> 3) < day
      return "3ヶ月以降の日付は選択できません。正しい日付を選択してください。"
    end
  end

  def self.appointment_frames_after_three_month
    appointment_frames = AppointmentFrame.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
    appointment_frame_data = []
    appointment_frames.each do |appointment_frame|
      appointment_frames_hash = {}
      appointment_frames_hash.merge!(day: appointment_frame.day.strftime("%Y-%m-%d"), time: appointment_frame.time)
      appointment_frame_data.push(appointment_frames_hash)
    end
    appointment_frame_data
  end


end
