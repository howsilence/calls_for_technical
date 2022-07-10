require 'recurly'
  
  
  #GET client
  @client = Recurly::Client.new(
    api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
  )  

begin
    account = @client.deactivate_account(account_id: "code-000111000")
    puts "Deactivated Account #{account}"
  rescue Recurly::Errors::NotFoundError
    puts "Resource Not Found"
  end
  