# == Schema Information
#
# Table name: videos
#
#  id                      :bigint           not null, primary key
#  youtube_id              :string           not null
#  title                   :string           not null
#  tags                    :string           default([]), is an Array
#  chapter_markers         :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  description_template_id :bigint           not null
#
class Video < ApplicationRecord
  belongs_to :description_template
  has_many :video_presenters
  has_many :presentes, throght: :video_presenters
  has_many :video_resources
end
