module ApplicationHelper
    def markdown(text)
        options = {
        filter_html:     true,
        hard_wrap:       true, 
        link_attributes: { rel: 'nofollow', target: "_blank" },
        space_after_headers: true, 
        fenced_code_blocks: true
        }

        extensions = {
        autolink:           true,
        superscript:        true,
        disable_indented_code_blocks: true
        }

        renderer = Redcarpet::Render::HTML.new(options)
        markdown = Redcarpet::Markdown.new(renderer, extensions)

        markdown.render(text).html_safe
    end

    def current_time
        Time.now
    end
    
    def titleize(page_title = "")
      base_title = "Snyder-Dev"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end
end
