# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Spotify::Application.config.secret_token = ENV["SECRET_TOKEN"] || '103153f30a523f0bcaa797de3e2543fd21801d9df9bfec24a62f728ed45faaa6d2ee749841c6a9cde4bee5457650376f75e898ce271d5d0831d636db68e79dcc'
