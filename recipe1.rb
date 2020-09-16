
package 'httpd' do
action :install
end

file '/var/www/html/index.html' do
content 'git and chef'
action :create
end

service 'httpd' do
action [:start, :enable]
end
