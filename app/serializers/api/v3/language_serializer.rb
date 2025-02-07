# frozen_string_literal: true

# == Schema Information
#
# Table name: languages
#
#  id                  :integer          not null, primary key
#  name                :string
#  iso_code            :string
#  native_name         :string
#  direction           :string
#  es_analyzer_default :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
module Api
  class V3::LanguageSerializer < V3::ApplicationSerializer
    attributes :name,
               :iso_code,
               :native_name,
               :direction,
               :id

    has_one :translated_name
  end
end