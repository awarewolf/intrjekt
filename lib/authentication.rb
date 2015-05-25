Warden::Strategies.add(:password) do
  def valid?
    params["email"] || params["password"]
  end

  def authenticate!
    if user = User.authenticate(params["email"], params["password"])
      success!(user)
    else
      fail!("Could not log in")
    end
  end
end

Warden::Manager.serialize_into_session { |user| user.id }
Warden::Manager.serialize_from_session { |id| User.find(id) }