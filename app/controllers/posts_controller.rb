class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	describe 'index page' do
		it 'links to post page' do
			second_post = Post.create(title: "My Title", description: "My post description")
			visit posts_path
			expect(page).to have_link(second_post.title, href: post_path(second_post))
		end
	end
end