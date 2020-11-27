When("inicio la aplicacion") do
		visit '/'
end

When("la letra es {string}") do |letra|
    fill_in("palabra", :with => letra)
    click_button "adivinar"
end
  
Then("el mensaje es {string}") do |mensaje|
    expect(page).to have_css "h1", text: mensaje
end

Then("errores indica {string}") do |errores|
    expect(page).to have_css "div#errores", text: errores
end