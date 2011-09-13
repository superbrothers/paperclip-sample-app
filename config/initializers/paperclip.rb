# -*- coding: UTF-8 -*-
Paperclip.interpolates('screen_name') do |attachment, style|
  attachment.instance.screen_name.parameterize
end
# vim: set fileencoding=utf-8
