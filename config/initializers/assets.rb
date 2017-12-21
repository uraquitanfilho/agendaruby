# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

##adicionado para testar inclução de um js criado pelo usuário
#deverá aplicar tb em app/views/layouts/application.html.erb a linha:
#<%= javascript_include_tag 'alert'%>
Rails.application.config.assets.precompile += %w( alert.js
                                                  addresses.js
                                                  contacts.js
                                                  home.js
                                                  kinds.js
                                                  phones.js
                                                  addresses.css
                                                  contacts.css
                                                  home.css
                                                  kinds.css
                                                  phones.css
                                                  notifyjs/notify.js) #blblioteca externa: vendor/assets/javascripts/notifyjs/notify.js
