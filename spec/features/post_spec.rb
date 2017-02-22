require 'rails_helper'

describe 'new post' do
  it 'shows user new post form' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit new_post_path
    expect(page).to have_content('Post Form')
  end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
    post_title = "Some title"
    post_description = "It's a post"
    visit new_post_path
    fill_in :post_title, with: post_title
    fill_in :post_description, with: post_description
    click_on 'Submit Post'

    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content(post_title)
    expect(page).to have_content(post_description)
  end
end
