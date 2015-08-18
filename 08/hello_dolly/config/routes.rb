Rails.application.routes.draw do
  get '/hello/dolly' => 'welcome#dolly'
  get '/goodbye/roger' => 'farewell#roger'
end
