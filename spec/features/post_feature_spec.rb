require 'spec_helper'
 
 def create_a_post
   Post.create(title: 'Hello world', text: 'Hellloooooo')
 end
 
 describe 'blog posts index page' do
 
   it 'should display a list of posts' do
     create_a_post
     visit '/posts'
 
    expect(page).to have_content "Hello world"
   end

   it 'should have the option to create new posts' do
   	visit '/posts'
   	expect(page).to have_content "New post"
   end
 
end

describe 'adding a new post' do
  it 'can be added from the New Post form' do
    visit '/posts/new'
    fill_in 'Title', with: 'Hello world'
    fill_in 'Text', with: 'Lorem ipsum'
    click_button 'Create post'

    expect(page).to have_content 'Post saved'
  end
end
