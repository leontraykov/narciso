CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    use_iam_profile:       true,
    region:                'us-east-1' # Пример региона, укажите ваш регион
  }
  config.fog_directory  = 'narciso-images'
end
