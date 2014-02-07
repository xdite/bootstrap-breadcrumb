require "spec_helper"

feature "Breadcrumb" do
  scenario "render_breadcrumb" do
    visit root_path

    expect(page).to have_css("ol.breadcrumb li", :count => 3)
    expect(page).to have_css("ol.breadcrumb li:last-child.active")
  end
end
