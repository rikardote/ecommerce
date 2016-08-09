ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "gmail.com",
	user_name: "ricardofa1980@gmail.com",
	password: "Animex1980",
	authentication: :login,
	enable_starttls_auto: true
}