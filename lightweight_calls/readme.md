## Build some API calls.
Use the following end point to retrieve info about the account you created:
https://v3.recurly.com/accounts/{account_id}

You'll need to use the the account code in the URL request. Replace "{account_id}" with your account code, but you'll need to
prefix the account code with "code-".

## Build an API call to update the address for this account.
Follow Recurly's API documentation here to build the JSON body for this request.

https://developers.recurly.com/api/v2021-02-25/index.html#operation/update_account

## For bonus points, build an API call to simulate a new customer who is subscribing for the first time.

The following URL is used to create an account and subscribe them to a plan in a single call.
https://developers.recurly.com/api/v2021-02-25/index.html#operation/create_purchase

## Instructions for demo

These scripts will each execute an API call when run in the terminal.

Each API call is in a seperate ruby file which can be executed in the terminal by simply typing: ruby file_name.rb

This is a simple, light weight way to make API calls to the Recurly API via writing code on an as needed basis.

Validations and success/failure codes are left as is and not passed along to a client because this is only meant to interact with the API in a development sandbox capacity.