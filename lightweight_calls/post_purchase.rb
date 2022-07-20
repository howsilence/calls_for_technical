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
    
#   exception handling leftover from documentation, because I'm only running scripts it wasn't needed.    
#   rescue Recurly::Errors::ValidationError => e
#     puts "ValidationError: #{e.recurly_error.params}"
  end
  

