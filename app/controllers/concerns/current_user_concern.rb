module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  # By creating a struct, we can use it almost like a dumby
  # we use super || to allow the original functionality to work
  # but also to add an exception
  def guest_user
    OpenStruct.new(name: 'Guest User',
                   first_name: 'Guest',
                   last_name: 'User',
                   email: 'guest@example.com'
                  )
  end
end
