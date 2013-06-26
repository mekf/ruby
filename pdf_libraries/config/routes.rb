PdfLibraries::Application.routes.draw do
  root to: 'home#index'
  match 'show', to: 'home#show'
  match 'show_simple', to: 'home#show_simple'
end
