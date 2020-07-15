module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      @page_title = title
      return
    end

    @page_title || "Riwayat Harga"
  end

  def html_head_title
    return @html_head_title if @html_head_title.present?
    
    if @page_title != nil
      return "#{page_title} - Riwayat Harga"
    end

    "Riwayat Harga"
  end

end
