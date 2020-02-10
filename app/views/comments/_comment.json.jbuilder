json.extract! comment, :id, :commenter_name, :comment_body, :idea_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
