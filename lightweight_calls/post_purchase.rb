require 'recurly'
  
  
  #GET client
  @client = Recurly::Client.new(
    api_key: 'ee5a4d19da5742bbba42ce16c9ca5c64'
  )  
  begin
    purchase = {
      currency: "USD",
      account: {
        code: "code-000111000",
        first_name: "Ahsoka",
        last_name: "Tano",
        billing_info: {
          first_name: "Ahsoka",
          last_name: "Tano",
          number: "1",
          address: {
            street1: "1 exile way",
            postal_code: "11211",
            city: "outer rim",
            region: "NV",
            country: "US"
          }
        },
      },
      subscriptions: [
        { plan_code: "Final-Pass-Plan" }
      ]
    }
    invoice_collection = @client.create_purchase(
      body: purchase
    )
    puts "Created Charge Invoice #{invoice_collection.charge_invoice}"
    puts "Created Credit Invoices #{invoice_collection.credit_invoices}"
  rescue Recurly::Errors::ValidationError => e
    # If the request was invalid, you may want to tell your user
    # why. You can find the invalid params and reasons in e.recurly_error.params
    puts "ValidationError: #{e.recurly_error.params}"
  end
  

    # purchase = {
    #   currency: "USD",
    #   account: {
    #     code: "code-123987456",
    #     first_name: "Ahsoka",
    #     last_name: "Tano",
    #     username: "LittleSoka",
    #     email: "Snips501s@therepublic.com",
    #   },
    #   shipping:{
    #    address:{
    #     first_name: "Ahsoka",
    #     last_name: "Tano",
    #     street1: "1 Exiled Padawan",
    #     city: "Phoenix",
    #     postal_code: "11211",
    #     country: "US",
    #    },
    #   },
    #   line_items: [
    #     {
    #     currency: "USD",
    #     unit_amount: 0,
    #     type: "charge",
    #     },
    #   ],
    #   subscriptions: [
    #     { plan_code: "White-Sabers",
    #      unit_amount: 0,
    #     },
    #   ],
    # }
    # invoice_collection = @client.create_purchase(
    #   body: purchase
    # )
    # puts "Created Charge Invoice #{invoice_collection.charge_invoice}"
    # puts "Created Credit Invoices #{invoice_collection.credit_invoices}"
#   rescue Recurly::Errors::ValidationError => e
#     # If the request was invalid, you may want to tell your user
#     # why. You can find the invalid params and reasons in e.recurly_error.params
#     puts "ValidationError: #{e.recurly_error.params}"
      #line 19 after email billing_info: {
        #   token_id: rjs_token_id
        # },