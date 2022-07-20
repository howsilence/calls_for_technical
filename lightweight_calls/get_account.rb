require 'recurly'

    #GET client
    @client = Recurly::Client.new(
      api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
    )   

    # This was not requested by the technical challenge but I found it useful to also check the plans I had made.
    params = {
      limit: 20
    }
    plans = @client.list_plans(params: params)
    plans.each do |plan|
      puts "Plan: #{plan.code}"
    end
    

    begin
      account = @client.get_account(account_id: "code-123456789")
      puts "Got Account #{account}"
        
#    exception handling leftover from documentation, because I'm only running scripts it wasn't needed.     
#     rescue Recurly::Errors::NotFoundError
#       puts "Resource Not Found"
    end
    
