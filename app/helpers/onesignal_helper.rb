module OnesignalHelper
  #create onesignal

def notification(title, picture, content, deliver)

client = OneSignal::Client.new(auth_token: 'YmFmNjdlM2QtY2RjNS00MjlhLWIxYTItYTkxMTYxYWJhNTIy', app_id: 'f25ce7ac-9737-4b46-af9a-42c20444cf12')

params = {"app_id" => "f25ce7ac-9737-4b46-af9a-42c20444cf12",
          "headings" => {"en"=> title},
          "chrome_web_icon" => picture,
          "contents" => {"en" => content},
          "send_after" => deliver,
          "included_segments" => ["All"]}

client.notifications.create(params)

end



end
