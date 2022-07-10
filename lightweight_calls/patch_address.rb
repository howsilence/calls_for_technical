require 'recurly'


    #GET client
    @client = Recurly::Client.new(
      api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
    )   

     #PATCH address
     begin
     account_update = {
        address: {
        street1: "2 updated shady cave",
        street2: "1 also updated shady cave",
        city: "mos eisly outskirts",
        region: "nv",
        postal_code: "12345",
        country: "united states"
        }
       }
       account = @client.update_account(
         account_id: 'code-123456789',
         body: account_update
       )
       puts "Updated Account #{account}"
      rescue Recurly::Errors::ValidationError => e
        puts "ValidationError: #{e.recurly_error.params}"
      end

     