# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SafeBrowsing.V4.Model.FindFullHashesRequest do
  @moduledoc """
  Request to return full hashes matched by the provided hash prefixes.

  ## Attributes

  - apiClient (ClientInfo): Client metadata associated with callers of higher-level APIs built on top of the client&#39;s implementation. Defaults to: `null`.
  - client (ClientInfo): The client metadata. Defaults to: `null`.
  - clientStates (List[String]): The current client states for each of the client&#39;s local threat lists. Defaults to: `null`.
  - threatInfo (ThreatInfo): The lists and hashes to be checked. Defaults to: `null`.
  """

  defstruct [
    :"apiClient",
    :"client",
    :"clientStates",
    :"threatInfo"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.FindFullHashesRequest do
  import GoogleApi.SafeBrowsing.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"apiClient", :struct, GoogleApi.SafeBrowsing.V4.Model.ClientInfo, options)
    |> deserialize(:"client", :struct, GoogleApi.SafeBrowsing.V4.Model.ClientInfo, options)
    |> deserialize(:"threatInfo", :struct, GoogleApi.SafeBrowsing.V4.Model.ThreatInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.FindFullHashesRequest do
  def encode(value, options) do
    GoogleApi.SafeBrowsing.V4.Deserializer.serialize_non_nil(value, options)
  end
end

