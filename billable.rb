require 'httparty'

@url="https://csvdemomockappp.bundlewallet.com/invoice/parse"
@response = HTTParty.post(@url.to_str,
                   :body => {
                              :payload  => 'RW1wbG95ZWUgSUQsQmlsbGFibGUgUmF0ZSAocGVyIGhvdXIpLFByb2plY3QsRGF0ZSxTdGFydCBUaW1lLEVuZCBUaW1lCjEsMzAwLEdvb2dsZSwyMDE5LTA3LTAxLDA5OjAwLDE3OjAwCjIsMTAwLEZhY2Vib29rLDIwMTktMDctMDEsMTE6MDAsMTY6MDA='
                   }.to_json,
                   :headers => { 'Content-Type' => 'application/json' } )


puts @response

@url1="https://csvdemomockappp.bundlewallet.com/invoice/"

@response1 =  HTTParty.get(@url1.to_str+@response["id"])


puts @response1

@id=@response1["id"]
@url2="https://csvdemomockappp.bundlewallet.com/invoice/#{@id}/company?companyName=Google"

response2 =  HTTParty.get(@url2)
puts response2