=begin
FoneStorm API 2.2.0

FracTEL's Middleware API

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class FaxesController < ApplicationController

  def create
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def post_faxes_receive_notify
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def post_faxes_send_notify
    # Your code here

    render json: {"message" => "yes, it worked"}
  end
end