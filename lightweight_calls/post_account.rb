# require 'sinatra'
# require 'thin'
require 'recurly'


    #GET client
    @client = Recurly::Client.new(
      api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
    )  
    begin
    account_create = {
      code: "code-000000002",
      first_name: "TestFirst",
      last_name: "TestLast",
      shipping_addresses: [
        {
          nickname: "Home",
          street1: "1 Fortress Inquisitorious",
          city: "New Orleans",
          region: "LA",
          country: "US",
          postal_code: "12344",
          first_name: "TestFirst",
          last_name: "TestLast"
        }
      ],
      username: "TestTest",
      email: "Test@test.com",

    }
    account = @client.create_account(body: account_create)
    puts "Created Account #{account}"
  rescue Recurly::Errors::ValidationError => e
    puts "ValidationError: #{e.recurly_error.params}"
  end
  