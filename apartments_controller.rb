#  list all apartments
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/home"
end
#
# # view an apartment's details
# get '/apartments/:id' do
#   @apartment = Apartment.find(params[:id])
#   #  @tenants = Tenant.where(apartment_id: params[:id])
#   erb :"apartments/show"
# end
#
# # add an apartment
# get '/apartments/new' do
#   erb :"apartments/new"
# end
#
# post '/apartments/' do
#   @address = params[:address]
#   @monthly_rent = params[:monthly_rent]
#   @sqft = params[:sqft]
#   @num_beds = params[:num_beds]
#   @num_baths = params[:num_baths]
#
#   @new_apt = Apartment.create(address: @address, monthly_rent: @monthly_rent, sqft: @sqft, num_beds: @num_beds, num_baths: @num_baths)
#
#   redirect '/apartments/' + @new_apt.id.to_s
# end
#
# # edit an apartment
# get '/apartments/:id/edit' do
#   @apartment = Apartment.find(params[:id])
#   erb :"apartments/edit"
# end
#
# put '/apartments/:id' do
#   @address = params[:address]
#   @monthly_rent = params[:monthly_rent]
#   @sqft = params[:sqft]
#   @num_beds = params[:num_beds]
#   @num_baths = params[:num_baths]
#
#   @new_apt = Apartment.update(address: @address, monthly_rent: @monthly_rent, sqft: @sqft, num_beds: @num_beds, num_baths: @num_baths)
#
#   redirect '/apartments/' + @new_apt.id.to_s
# end
#
# # delete an apartment
# delete '/apartments/:id' do
#   @apartment = Apartment.find(params[:id])
#   @apartment.destroy
#   redirect "/apartments"
# end

# BONUS
# list tenants
