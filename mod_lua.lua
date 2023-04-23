function handle(r)

	r.content_type = "text/html"
	r:puts("ok") -- это работает

	return apache2.OK
end