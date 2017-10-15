module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  # By creating a struct, we can use it almost like a dumby
  # we use super || to allow the original functionality to work
  # but also to add an exception
  def guest_user
    guest = GuestUser.new
    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'guest@example.com'
    guest
  end
end
