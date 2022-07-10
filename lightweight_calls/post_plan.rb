require 'recurly'


    #GET client
    @client = Recurly::Client.new(
      api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
    )   

    begin
      plan_create = {
        code: "Final-Pass-Plan",
        name: "Final Pass Plan",
        currencies: [
          currency: "USD",
          setup_fee: 0
        ],
        add_ons: [
          {
            name: 'Last Code',
            code: 'Final-Pass-Plan',
            currencies: [
              { currency: 'USD', unit_amount:0 }
            ]
          }
        ]
      }
      plan = @client.create_plan(body: plan_create)
      puts "Created Plan #{plan}"
    rescue Recurly::Errors::ValidationError => e
      puts "ValidationError: #{e.recurly_error.params}"
    end
    

   