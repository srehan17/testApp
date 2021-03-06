# frozen_string_literal: true

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS', # required
    aws_access_key_id: ENV['S3_KEY'], # required unless using use_iam_profile
    aws_secret_access_key: ENV['S3_SECRET'], # required unless using use_iam_profile
    region: 'ca-central-1'
  }
  config.fog_directory  = 'sarah-rehan-idea-app' # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
