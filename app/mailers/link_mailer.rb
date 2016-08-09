class LinkMailer < ActionMailer::Base
	default from: "downloads@codigofacilito.com"
	layout false
	def download_link(link)
		@link = link
		@product = link.product
		mail(to: link.email,subject:"Descarga los productos que adquiriste en tiendus.com")
	end
end