json.extract! portfolio, :id, :title, :subtitle, :body, :main_iamge, :thumb_image, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
