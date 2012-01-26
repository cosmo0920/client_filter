#!/usr/bin/env ruby -Ku
# -*- coding: utf-8 -*-
Plugin.create(:cilent_filter) do
  #[]にクライアント名の文字列を配列として記入していってください。
  #TODO:  設定画面かどこかにGUIをつける
  exclude_client = ["<client name>","...",".."]
  filter_show_filter do |msgs|
    msgs = msgs.select{ |m|
      not exclude_client.any?{ |word|
	    word.to_s.include?(m[:source])
	  }
    }
    [msgs]
  end
end

