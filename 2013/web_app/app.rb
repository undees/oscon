require 'sinatra'
require 'sinatra/activerecord'

set :database, 'sqlite:///app.sqlite3'

class Project < ActiveRecord::Base
  has_many :documents
end

class Document < ActiveRecord::Base
  belongs_to :project
end

get '/' do
  haml :index
end

get '/projects/:id' do
  @project = Project.find params[:id]
  haml :project
end

__END__

@@index
%ul
  - Project.all.each do |pj|
    %li
      %a{:href => "/projects/#{pj.id}"}
        = pj.name

@@project
- @project.documents.each do |d|
    %li= d.title
