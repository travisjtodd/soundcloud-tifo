class SessionsController < ApplicationController
  def create
    # logger.info env["omniauth.auth"].to_s

    # {
    #   "provider" => "soundcloud",
    #   "uid" => 12345678,
    #   "info" => {
    #     "name" => "Soundcloud User",
    #     "nickname" => "soundclouder",
    #     "image" => "https://the.image.url",
    #     "location" => "Soundcloud Town"
    #   },
    #   "credentials" => {
    #     "token" => "123-321",
    #     "expires" => false
    #   },
    #   "extra" => {
    #     "raw_info" => {
    #       "id" => 12345678,
    #       "kind" => "user",
    #       "permalink" => "soundclouder",
    #       "username" => "soundclouder",
    #       "full_name" => "Soundcloud User",
    #       "uri" => "https://api.soundcloud.com/users/12345678",
    #       "permalink_url" => "http://soundcloud.com/soundclouder",
    #       "avatar_url" => "https://the.image.url",
    #       "country" => "United States",
    #       "city" => "Soundcloud Town",
    #       "online" => true,
    #       "track_count" => 23,
    #       "playlist_count" => 12,
    #       "public_favorites_count" => 123,
    #       "followers_count" => 321,
    #       "followings_count" => 234,
    #       "plan" => "Free",
    #       "private_tracks_count" => 0,
    #       "private_playlists_count" => 0,
    #       "primary_email_confirmed" => true
    #     }
    #   }
    # }

    # {
    #   "code"=>"738e3f864422a633f7662179eb0926a7", 
    #   "state"=>"28d108ace83f5212a7a3568753d19d1f1363717b7c253461", 
    #   "provider"=>"soundcloud"
    # }
    # {
    #   credentials: { 
    #     expires: false,
    #     token: "1-85144-8622709-1efa8fd3074990de"
    #   }, 
    #   extra: {
    #     raw_info: {
    #       avatar_url: "https://i1.sndcdn.com/avatars-000073754333-32nmsm-large.jpg?30a2558",
    #       first_name: "Travis", 
    #       followers_count: 57,
    #       followings_count: 91, 
    #       full_name: "Travis Todd", 
    #       id: 8622709, 
    #       kind: "user", 
    #       last_name: "Todd", 
    #       online: false, 
    #       permalink: "travisjtodd", 
    #       permalink_url: "http://soundcloud.com/travisjtodd", 
    #       plan: "Free", 
    #       playlist_count: 8, 
    #       primary_email_confirmed: true, 
    #       private_playlists_count: 0, 
    #       private_tracks_count: 0, 
    #       public_favorites_count: 42, 
    #       quota: {
    #         unlimited_upload_quota: false, 
    #         upload_seconds_left: 6362, 
    #         upload_seconds_used: 837
    #       }, 
    #       track_count: 9, 
    #       upload_seconds_left: 6362, 
    #       uri: "https://api.soundcloud.com/users/8622709", 
    #       username: "Travis J. Todd"
    #     }
    #   } 
    #   info: {
    #     image: "https://i1.sndcdn.com/avatars-000073754333-32nmsm-large.jpg?30a2558", 
    #     name: "Travis Todd", 
    #     nickname: "Travis J. Todd"
    #   } 
    #   provider: "soundcloud", 
    #   uid: 8622709
    # }

    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"

  end

  def destroy
  end
end
