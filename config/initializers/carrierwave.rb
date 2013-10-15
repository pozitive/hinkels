CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["AKIAIAKRILX6JLFX6ZLQ"],
    aws_secret_access_key: ENV["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"]
  }
  config.fog_directory = ENV["hinkels"]
end
