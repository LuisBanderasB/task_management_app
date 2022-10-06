# frozen_string_literal: true

module ApplicationHelper
  def embedded_svg(filename, options = {})
    assets = Rails.application.assets
    asset = assets.find_asset(filename)

    if asset
      file = asset.source.force_encoding('UTF-8')
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css 'svg'
      svg['class'] = options[:class] if options[:class].present?
    else
      doc = "<!-- SVG #{filename} not found -->"
    end

    raw doc
  end

  def available_to_create_boards()
    if current_user.role == 'manager'
      return true
    else
      return false
    end
  end

  def complete_name(user)
    complete = "#{user.first_name} #{user.last_name}"
  end

  def format_date(date)
    date.strftime("%F")
  end
end
