Intrjekt::App.controllers :json do

  get "/posts" do
    content_type :json

    { "2" => 'Server data', "9" => 'Not really..', "18" => "That's cruelty to animals.", "25" => 'Yum, badger burgers!!', "28" => 'Noo. Save the badgers!' }.to_json
  end

end