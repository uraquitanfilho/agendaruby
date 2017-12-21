/*
--------------------------------
 Precompilando assets adicionais
 --------------------------------
 para o rails o único q será pré compilado é o application.css
 criar arquivo teste alert.js na pasta libs/javascripts/alert.js
 adicionar em app/views/layouts/application.html.erb a linha:
 <%= javascript_include_tag 'alert'%>
 config/initializers/assets.rb
 adicionar a linha:
 Rails.application.config.assets.precompile += %w( alert.js )
 --- reiniciar o servidor
 
 http://guides.rubyonrails.org/asset_pipeline.html#controller-specific-assets
 pode compilar assets para controllers específicos.
*/
alert("testando precompilacao:\nlib/assets/javascripts/alert.js");