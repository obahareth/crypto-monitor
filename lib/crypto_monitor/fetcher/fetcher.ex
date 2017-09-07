defmodule CryptoMonitor.Fetcher do
  @crypto_compare_api_url "https://www.cryptocompare.com/api/"

  def fetch_coin_list do
    api_url = @crypto_compare_api_url <> "data/coinlist/"

    case HTTPoison.get(api_url) do
      {:ok, response} -> Poison.decode(response.body)
      {:error, error} -> {:error, error}
      _ -> nil
    end
  end
end
