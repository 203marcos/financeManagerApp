defmodule TrabalhoAv3Web.Auth.ErrorHandler do
  import Plug.Conn

  def auth_error(conn, {_type, _reason}, _opts) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(401, ~s({"error": "Unauthorized"}))
  end
end
