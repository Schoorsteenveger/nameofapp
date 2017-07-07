class MyRegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
      Notifier.welcome_email(resource).deliver if resource.persisted?
    end  
  end

end