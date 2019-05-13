module ApplicationHelper

  def default_meta_tags
    {
    	title:"<%= yield(:title) || '退職代行だけじゃない！！残業代や給料の未払い迄トータルサポート' %>",
    	description: "退職代行は退職トータルサポートにお任せください！退職はもちろんのこと、残業代の請求や給料未払いまで幅広くサポートしております。",
    	keywords: "退職代行, 退職代行 残業",
        canonical: request.original_url,  # 優先されるurl
        charset: "UTF-8"
    }
  end

end
