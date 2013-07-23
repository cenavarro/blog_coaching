class RestServlet < HTTPServlet::AbstractServlet
  def do_GET(request, response)
    raise HTTPStatus::OK
  end

  def do_POST(request, response)
    raise HTTPStatus::Found
  end
end
