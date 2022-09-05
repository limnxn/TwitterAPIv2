module Request
    extend ActiveSupport::Concern

    included do
      def initialize
        @base_url = 'https://api.twitter.com/2'
        @bearer_token = ENV['BEARER_TOKEN']
      end

      def request_url(params)
        # URL構成要素取得
        uri = URI.parse("#{@base_url}#{params}")
        # セッション開始
        http = Net::HTTP.new(uri.host, uri.port)
        # SSL接続時設定
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        # GET実行
        req = Net::HTTP::Get.new(uri.request_uri)
        # BearerToken指定
        req["Authorization"] = "Bearer #{@bearer_token}"
        # リクエスト開始
        res = http.request(req)

        return JSON.parse(res.body)
      end
    end
end