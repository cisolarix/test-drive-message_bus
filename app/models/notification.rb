class Notification < ActiveRecord::Base
  after_save do
    puts
    puts '++++++++++++++++++++++++++++++++++++++++++++'
    puts content.inspect
    puts '++++++++++++++++++++++++++++++++++++++++++++'
    puts
    MessageBus.publish "/channel", content
  end
end
