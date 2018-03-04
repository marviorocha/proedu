module CursesHelper

  def OneSignalcreate(title, picture, content)

  client = OneSignal::Client.new(auth_token: 'YmFmNjdlM2QtY2RjNS00MjlhLWIxYTItYTkxMTYxYWJhNTIy', app_id: 'f25ce7ac-9737-4b46-af9a-42c20444cf12')

  params = {"app_id" => "f25ce7ac-9737-4b46-af9a-42c20444cf12",
            "headings" => {"en"=> title},
            "chrome_big_picture" => picture,
            "contents" => {"en" => content},
            "included_segments" => ["All"]}

  client.notifications.create(params)

  end


end
