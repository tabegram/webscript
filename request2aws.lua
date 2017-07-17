-- デバイスからの情報をそのまま渡してあげる
local event = json.parse(request.body)
local response = http.request {
	url = '', -- Amazon API Gateway URL
  headers = {
    ['x-api-key'] = '', -- Amazon API Gateway Key
      ['Authorization'] = 'Bearer '..access_token
  }
	data = event,
  method = 'POST'
}
-- responseでのハンドリングは特になし
