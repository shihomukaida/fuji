json.array!(@stages) do |stage|
  json.extract! stage, :id, :name, :date, :start, :finish, :gyara
  json.url stage_url(stage, format: :json)
end
