Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( application.js )

Rails.application.config.assets.precompile += %w( categories.js )

Rails.application.config.assets.precompile += %w( votes.js )

Rails.application.config.assets.precompile += %w( jquery-upvote.js )
