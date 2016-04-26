class ApplicationHelper::Button::CustomButton < ApplicationHelper::Button::Basic
  def skip?
    %w(catalogitem_new catalogitem_edit atomic_catalogitem_new atomic_catalogitem_edit).any? do |feature|
      !role_allows(:feature => feature)
    end
  end
end
