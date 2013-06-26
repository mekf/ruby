PdfLibraries::Application.routes.draw do
  root to: 'home#index'
  match 'show', to: 'home#show'
end
