Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["GITHUB_CLIENT_ID"], ENV["GITHUB_CLIENT_SECRET"], scope: "user:email"
end

#the .env file contains the "GITHUB_CLIENT_ID" and "GITHUB_CLIENT_SECRET" variables, so if you change this here or change it there, you have to change both!
