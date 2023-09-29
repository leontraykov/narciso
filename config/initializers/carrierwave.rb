CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    region: 'us-east-1',  # Замените на регион вашего ведра
    use_iam_profile: true
  }
  config.fog_directory  = 'narciso-images'
end
