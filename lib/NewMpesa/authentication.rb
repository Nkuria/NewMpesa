require 'faraday'
class Authentication 
    @consumerKey = ""
    @secretKey = ""
    def self.mpesaAuthentication
        begin
            response = Faraday.get(URI.encode('https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials')) do |req|
                req.params['limit'] = 100
                req.headers['Content-Type'] = 'application/json'
                req.headers['Authorization'] = 'Basic ' + @encoded
              end
              response = JSON.parse(response.body)
              token = response['access_token']
              token
        rescue Faraday::Error => e
          puts e
        rescue StandardError => e
            puts e
        rescue => e
            puts e
        end
    
      end
end