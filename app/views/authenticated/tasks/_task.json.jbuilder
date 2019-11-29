json.extract! task, :id, :title, :note, :is_done, :deadline_at, :user_id, :category_id, :created_at, :updated_at
json.url task_url(task, format: :json)
